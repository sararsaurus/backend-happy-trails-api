class TrailsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @trails = Trail.all
    render :index
  end

  def show
    @trail = Trail.find_by(id: params[:id])
    render :show
  end

  def create
    trail = Trail.create!(
      name: params[:name],
      description: params[:description],
      length: params[:length],
      difficulty: params[:difficulty],
      image_url: params[:image_url],
    )
    if trail.save
      render json: trail.as_json
    else
      render json: { errors: trail.errors.full_messages }, status: 418
    end
  end

  def update
    trail = Trail.find_by(id: params[:id])
    trail.name = params["name"] || trail.name
    trail.description = params["description"] || trail.description
    trail.length = params["length"] || trail.length
    trail.difficulty = params["difficulty"] || trail.difficulty
    trail.image_url = params["image_url"] || trail.image_url
    if trail.save
      render json: trail.as_json
    else
      render json: { errors: trail.errors.full_messages }, status: 418
    end
  end

  def destroy
    trail = Trail.find_by(id: params[:id])
    trail.destroy
    render json: { message: "Trail destroyed successfully" }
  end
end
