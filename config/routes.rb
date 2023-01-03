Rails.application.routes.draw do
  root "trails#index"

  post "/sessions" => "sessions#create"

  resources :users, :trails, :conditions, :fast_facts, :hike_schedules
end
