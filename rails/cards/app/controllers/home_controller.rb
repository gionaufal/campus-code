class HomeController < ApplicationController
  def index
    @cards = Card.all
    if params[:search]
      @cards = Card.where("front LIKE ?", "%#{params[:search]}%" )
    else
      @cards = Card.all
    end
  end
end
