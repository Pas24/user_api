class UsersController < ApplicationController

  # GET /users/{id}/welcome  
  def welcome
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  # GET /users/first
  def first
    @user = User.first
    render json: @user, status: :ok
  end
end
