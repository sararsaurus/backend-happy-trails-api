class RemoveSunriseSunsetTime < ActiveRecord::Migration[7.0]
  def change
    remove_column :conditions, :sunrise_time, :time
    remove_column :conditions, :sunset_time, :time
  end
end
