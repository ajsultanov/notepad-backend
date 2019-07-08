class Api::V1::WeathersController < ApplicationController

  def index
    @weathers = Weather.all
    render json: @weathers, status: 200
  end

  def create
    @example_weather = Weather.get_weather(lat, lng)
    @example_data_i_want = @example_weather.example_data
    render json @example_data_i_want
  end

  # class ExamplesController < ApplicationController
  #   def index
  #     @results = ModelForMyApi.retrieve_results("superCoolParameter")
  #   end
  # end

  private

  def weather_params
    params.require(:loc).permit(:lat, :lng)
  end

end
