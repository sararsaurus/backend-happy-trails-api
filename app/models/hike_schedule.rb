class HikeSchedule < ApplicationRecord
  belongs_to :trail
  # has_many :conditions, through: :trails
  # has_many :fast_facts, through: :trails
  belongs_to :user
end
