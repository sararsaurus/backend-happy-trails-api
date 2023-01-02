class CreateFastFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :fast_facts do |t|
      t.text :general
      t.text :nearby_landmarks
      t.string :lake_info
      t.string :backcountry_zones
      t.string :ecological_zones

      t.timestamps
    end
  end
end
