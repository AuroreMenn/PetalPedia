class CreateFlowers < ActiveRecord::Migration[7.1]
  def change
    create_table :flowers do |t|
      t.text :image
      t.string :name
      t.string :scientific_name
      t.string :flower_type
      t.string :blooming
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
