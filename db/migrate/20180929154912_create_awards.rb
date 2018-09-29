class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.string :name
      t.integer :stock
      t.integer :minimumAge
      t.integer :maximumAge
      t.string :picture
      t.text :description
      t.string :terms
      t.datetime :startDate
      t.datetime :endDate
      t.string :rate
      t.string :civicoins
      t.references :enterprise, foreign_key: true

      t.timestamps
    end
  end
end
