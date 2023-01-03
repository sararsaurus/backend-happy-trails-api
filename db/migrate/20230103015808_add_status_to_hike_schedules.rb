class AddStatusToHikeSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :hike_schedules, :status, :string
  end
end
