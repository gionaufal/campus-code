class HomeController < ApplicationController
  def index
    if params[:search]
      @cards = Card.where("front LIKE ?", "%#{params[:search]}%" )
    else
      @cards = Card.where(published:true)
    end
  end
end
