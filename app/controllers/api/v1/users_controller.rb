class Api::V1::UsersController < ApplicationController

  def index
    users = User.all

    render json: users
  end

  def create
    user = User.create(
      name: params[:name], 
      password: params[:password], 
      email: params[:email], 
      picture: params[:picture], 
      karma_credits: params[:karma_credits], 
      about: params[:about])

    render json: user
  end

end