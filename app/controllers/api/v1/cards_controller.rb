class Api::V1::CardsController < ApplicationController
  def index
  # if current_user
    @cards = Card.all
    render json: @cards
  # else
    # redirect_to login_path
  # end
  end

  def new
  # if current_user
    # @user = current_user
    @card = Card.new
  # else
    # redirect_to login_path
  # end
  end

  def show
    @user = current_user
    find_card
    render json: @user
  end

  def create
  # if current_user
    @card = Card.new(title: params[:card][:title])
    # @card.user = current_user
    @card.save
    @card.emojis.each do |emojis|
      EmojiCard.find_or_create_by(card_id: card.id, emoji_id: emoji.id)
    end
    render json: @card
    # if @card.valid?
    #   # redirect_to current_user
    # else
    #   # render :new
    # end
  # else
    # redirect_to login_path
  # end
  end

  def update
    find_card
    @card.update(title: params[:card][:title])
    ids_arr = params[:card][:emoji_ids].each {|id| @card.emojis}
    while ids_arr.map{|id| !id.empty?} == true
      @card.emojis << Emoji.find(id)
    end
    render json: @card
    # redirect_to outfits_path
  end

  def edit
    find_card
    render json: @card
  end

  def destroy
    find_card
    @card.destroy
    # redirect_to current_user
  end

  private
  def card_params
    params.require(:card).permit(:title)
  end

  def find_card
    @card = Card.find(params[:id])
  end
end
