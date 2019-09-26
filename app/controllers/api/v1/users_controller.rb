class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(
       name: params[:name], 
      password: params[:password], 
      email: params[:email], 
      picture: params[:picture], 
      karma_credits: params[:karma_credits], 
      about: params[:about])
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

end