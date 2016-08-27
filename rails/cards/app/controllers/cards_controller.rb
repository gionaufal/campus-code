class CardsController < ApplicationController

  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def show
    @comment = Comment.new
  end

  def index
    @cards = Card.all
    if params[:search]
      @cards = Card.where("front LIKE ? or back LIKE ?", "#{params[:search]}", "#{params[:search]}")
    else
      @cards = Card.all
    end
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.create(card_parameters)
    if @card.save
      redirect_to @card
    else
      flash.now[:alert] = "Não se esqueça de preencher a versão em português!"
      render :new
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card.update(card_parameters)
    redirect_to @card
  end

  def destroy
    @card.destroy
    redirect_to root_url
  end

  private

  def card_parameters
    params.require(:card).permit(:front, :back, :author)
  end

  def set_card
    @card = Card.find(params[:id])
  end

end
