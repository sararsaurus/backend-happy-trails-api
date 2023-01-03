class Trail < ApplicationRecord
  has_many :conditions
  has_many :fast_facts
  has_many :hike_schedules
end
