class AddTrailIdToConditions < ActiveRecord::Migration[7.0]
  def change
    add_column :conditions, :trail_id, :integer
  end
end
