class Api::V1::WeathersController < ApplicationController

  def index
    @weathers = Weather.all
    render json: @weathers, status: 200
  end

  # class ExamplesController < ApplicationController
  #   def index
  #       @results = ModelForMyApi.retrieve_results("superCoolParameter")
  #   end
  # end

end
