class User < ApplicationRecord
  has_many :hike_schedules
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
