class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]
  before_action :find_users, only: [:index]

  def index
    render json: @users, status: 200
  end

  def create
  end

  def update
  end

  def show
    render json: @user, status: 200
  end

  private

  def user_params
    params.permit(:id, :username, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def find_users
    @users = User.all
  end

end
