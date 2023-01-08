class ForecastsController < ApplicationController
  def index
    ### SUNRISE/SUNSET/FIRST LIGHT/LAST LIGHT/DAWN/DUSK/GOLDEN HR/DAY LENGTH

    light = HTTP.get("https://api.sunrisesunset.io/json?lat=40.06892&lng=-105.6193&date=today").parse(:json)

    sunrise = light["results"]["sunrise"]
    sunset = light["results"]["sunset"]
    first_light = light["results"]["first_light"]
    last_light = light["results"]["last_light"]
    golden_hour = light["results"]["golden_hour"]

    ### WEATHER
    weather = HTTP.get("https://api.weather.gov/gridpoints/BOU/41,77/forecast").parse(:json)

    today_temp = weather["properties"]["periods"][0]["temperature"]
    today_wind_speed = weather["properties"]["periods"][0]["windSpeed"]
    today_wind_direction = weather["properties"]["periods"][0]["windDirection"]
    today_forecast = weather["properties"]["periods"][0]["detailedForecast"]

    render json: light
    render json: weather
  end
end
