class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: @user
    # if @user.valid?
    #   # redirect_to login_path
    # else
    #   # render :new
    # end
  end

  def show
    find_user
    render json: @user
  end

  def edit
    find_user
    render json: @user
  end

  def update
    find_user
    @user.update(user_params)
    render json: @user
    # redirect_to @user
  end

  def destroy
    find_user
    @user.destroy
    @user.cards.each do |card|
      card.destroy
    end
    # redirect_to gttr_path
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
