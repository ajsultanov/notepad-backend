class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update]
  before_action :find_users, only: [:index]

  def index
    render json: @users, status: 200
  end

  def create

    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]

    ds_url = "https://api.darksky.net/forecast/"
    secret_key = ENV['SECRET_KEY']

    response =  RestClient.get("#{ds_url}#{secret_key}/#{lat},#{lng}?exclude=minutely,hourly,daily,alerts")

    @user.create_weather({temp: response.temperature, icon: response.icon, status: response.status})

#    @note.weather = create_weather(attributes = {})...

    if @user = User.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
  end

  def show
    render json: @user, status: 200
  end

  private

  def user_params
    params.permit(:id, :username, :password, :time, :season, :lat, :lng)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def find_users
    @users = User.all
  end

end
