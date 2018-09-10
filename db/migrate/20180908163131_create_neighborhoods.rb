class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.integer :upz
      t.text :shape
      t.decimal :latitude
      t.decimal :longitude
      t.references :district_area, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
