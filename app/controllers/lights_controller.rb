class LightsController < ApplicationController
  def index
    ### SUNRISE/SUNSET/FIRST LIGHT/LAST LIGHT/DAWN/DUSK/GOLDEN HR/DAY LENGTH

    light = HTTP.get("https://api.sunrisesunset.io/json?lat=40.06892&lng=-105.6193&date=today").parse(:json)

    sunrise = light["results"]["sunrise"]
    sunset = light["results"]["sunset"]
    first_light = light["results"]["first_light"]
    last_light = light["results"]["last_light"]
    golden_hour = light["results"]["golden_hour"]

    render json: light["results"]
  end
end
