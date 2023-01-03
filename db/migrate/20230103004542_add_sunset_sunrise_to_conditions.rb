class AddSunsetSunriseToConditions < ActiveRecord::Migration[7.0]
  def change
    add_column :conditions, :sunrise_time, :integer
    add_column :conditions, :sunset_time, :integer
  end
end
