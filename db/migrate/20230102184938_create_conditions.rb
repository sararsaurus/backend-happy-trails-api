class CreateConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :conditions do |t|
      t.string :trail_condition
      t.integer :temp
      t.string :forecast
      t.time :sunrise_time
      t.time :sunset_time

      t.timestamps
    end
  end
end
