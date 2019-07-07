require 'dotenv/load'

class Weather < ApplicationRecord
   belongs_to :note


   # RestClient.get('http://example.com/resource', headers={})

   # def get_weather
   #  response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + ',us&appid=[YOUR API KEY HERE]')
   #  response["main"]["humidity"]
  # end

end
