class CreateHikeSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :hike_schedules do |t|
      t.integer :trail_id
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
