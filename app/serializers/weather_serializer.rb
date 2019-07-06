class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :temp, :precip, :moon, :clouds

  belongs_to :note
end
