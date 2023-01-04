class HikeSchedulesController < ApplicationController
  def index
    @hike_schedules = current_user.hike_schedules.where(status: "saved")
    render :index
  end

  def show
    @hike_schedules = current_user.hike_schedules.find_by(id: params[:id])
    render :show
  end

  def create
    hike_schedule = HikeSchedule.create!(
      trail_id: params[:trail_id],
      user_id: current_user.id,
      date: params[:date],
      status: "saved",
    )
    if hike_schedule.save
      render json: hike_schedule.as_json
    else
      render json: { errors: hike_schedule.errors.full_messages }, status: 418
    end
  end

  def update
    hike_schedule = current_user.hike_schedules.find_by(id: params[:id])
    hike_schedule.trail_id = params["trail_id"] || hike_schedule.trail_id
    hike_schedule.date = params["date"] || hike_schedule.date
    if hike_schedule.save
      render json: hike_schedule.as_json
    else
      render json: { errors: hike_schedule.errors.full_messages }, status: 418
    end
  end

  def destroy
    hike_schedule = HikeSchedule.find_by(id: params[:id])
    hike_schedule.destroy
    render json: { message: "Hike removed" }
  end
end
