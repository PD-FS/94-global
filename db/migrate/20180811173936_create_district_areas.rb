class CreateDistrictAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :district_areas do |t|
      t.string :name
      t.string :initialZipCode
      t.string :lastZipCode
      t.decimal :surfaceArea
      t.decimal :population
      t.decimal :density

      t.timestamps
    end
  end
end
