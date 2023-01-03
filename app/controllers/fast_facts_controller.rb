class FastFactsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @fast_facts = FastFact.all
    render json: @fast_facts.as_json
  end

  def show
    @fast_fact = FastFact.find_by(id: params[:id])
    render json: @fast_fact.as_json
  end

  def create
    fast_fact = FastFact.create!(
      general: params[:general],
      nearby_landmarks: params[:nearby_landmarks],
      lake_info: params[:lake_info],
      backcountry_zones: params[:backcountry_zones],
      ecological_zones: params[:ecological_zones],
      trail_id: params[:trail_id],
    )
    if fast_fact.save
      render json: fast_fact.as_json
    else
      render json: { errors: fast_fact.errors.full_messages }, status: 418
    end
  end

  def update
    fast_fact = FastFact.find_by(id: params[:id])
    fast_fact.general = params["general"] || fast_fact.general
    fast_fact.nearby_landmarks = params["nearby_landmarks"] || fast_fact.nearby_landmarks
    fast_fact.lake_info = params["lake_info"] || fast_fact.lake_info
    fast_fact.backcountry_zones = params["backcountry_zones"] || fast_fact.backcountry_zones
    fast_fact.ecological_zones = params["ecological_zones"] || fast_fact.ecological_zones
    fast_fact.trail_id = params["trail_id"] || fast_fact.trail_id
    if fast_fact.save
      render json: fast_fact.as_json
    else
      render json: { errors: fast_fact.errors.full_messages }, status: 418
    end
  end

  def destroy
    fast_fact = FastFact.find_by(id: params[:id])
    fast_fact.destroy
    render json: { message: "Fast fact destroyed successfully" }
  end
end
