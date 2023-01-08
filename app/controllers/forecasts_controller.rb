class ForecastsController < ApplicationController
  def index

    ### WEATHER
    weather = HTTP.get("https://api.weather.gov/gridpoints/BOU/41,77/forecast").parse(:json)

    today_temp = weather["properties"]["periods"][0]["temperature"]
    today_wind_speed = weather["properties"]["periods"][0]["windSpeed"]
    today_wind_direction = weather["properties"]["periods"][0]["windDirection"]
    today_forecast = weather["properties"]["periods"][0]["detailedForecast"]

    render json: weather
  end
end
