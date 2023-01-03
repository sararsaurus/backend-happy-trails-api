class Trail < ApplicationRecord
  has_many :conditions
  has_many :fast_facts
  belongs_to :hike_schedule
end
