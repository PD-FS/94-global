class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.decimal :code
      t.decimal :area
      t.text :shape
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
