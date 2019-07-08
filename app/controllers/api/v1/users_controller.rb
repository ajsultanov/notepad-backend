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
    @user.lat = params[:lat]
    @user.lng = params[:lng]

    ds_url = "https://api.darksky.net/forecast/"
    secret_key = ENV['SECRET_KEY']

    resp = RestClient.get("#{ds_url}#{secret_key}/#{@user.lat},#{@user.lng}?exclude=minutely,hourly,daily,alerts")

    if @user.create_weather({:temp => resp.currently.temperature, :icon => resp.currently.icon, :status => resp.currently.status})
      puts "yay saved"
    else
      puts "oh no"
    end

    if @user.save
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
