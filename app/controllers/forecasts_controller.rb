class ForecastsController < ApplicationController
  def index

    ### WEATHER
    weather = HTTP.get("https://api.weather.gov/gridpoints/BOU/41,77/forecast").parse(:json)

    now_temp = weather["properties"]["periods"][0]["temperature"]
    now_wind_speed = weather["properties"]["periods"][0]["windSpeed"]
    now_wind_direction = weather["properties"]["periods"][0]["windDirection"]
    now_forecast = weather["properties"]["periods"][0]["detailedForecast"]

    render json: weather["properties"]["periods"]
  end
end
