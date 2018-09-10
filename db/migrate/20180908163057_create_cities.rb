class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal :altitude
      t.decimal :latitude
      t.decimal :longitude
      t.string :flag
      t.text :shape
      t.references :department, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
