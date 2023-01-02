class AddTrailIdToFastFacts < ActiveRecord::Migration[7.0]
  def change
    add_column :fast_facts, :trail_id, :integer
  end
end
