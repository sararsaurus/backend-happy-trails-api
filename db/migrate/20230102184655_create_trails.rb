class CreateTrails < ActiveRecord::Migration[7.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.text :description
      t.integer :length
      t.string :difficulty
      t.string :image_url

      t.timestamps
    end
  end
end
