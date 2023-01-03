class ConditionsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @conditions = Condition.all
    render json: @conditions.as_json
  end

  def show
    @condition = Condition.find_by(id: params[:id])
    render json: @condition.as_json
  end

  def create
    condition = Condition.create!(
      trail_condition: params[:trail_condition],
      temp: params[:temp],
      forecast: params[:forecast],
      trail_id: params[:trail_id],
      sunrise_time: params[:sunrise_time],
      sunset_time: params[:sunset_time],
    )
    if condition.save
      render json: condition.as_json
    else
      render json: { errors: condition.errors.full_messages }, status: 418
    end
  end

  def update
    condition = Condition.find_by(id: params[:id])
    condition.trail_condition = params["trail_condition"] || condition.trail_condition
    condition.temp = params["temp"] || condition.temp
    condition.forecast = params["forecast"] || condition.forecast
    condition.sunrise_time = params["sunrise_time"] || condition.sunrise_time
    condition.sunset_time = params["sunset_time"] || condition.sunset_time
    condition.trail_id = params["trail_id"] || condition.trail_id
    if condition.save
      render json: condition.as_json
    else
      render json: { errors: condition.errors.full_messages }, status: 418
    end
  end

  def destroy
    condition = Condition.find_by(id: params[:id])
    condition.destroy
    render json: { message: "Condition destroyed successfully" }
  end
end
