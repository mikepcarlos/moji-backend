class Api::V1::EmojisController < ApplicationController
  # before_action :find_emoji
  def index
    @emojis = Emoji.all
    render json: @emojis
  end

  # def update
  #   @emoji.update(emoji_params)
  #   if @emoji.save
  #     render json: @emoji, status: :accepted
  #   else
  #     render json: {errors: @emoji.errors.full_messages}, status: :unprocessible_entity
  #   end
  # end

  private

  def emoji_params
    params.permit(:title, :emotion)
  end

  # def find_emoji
  #   @emoji = Emoji.find(params[:id])
  # end
end
