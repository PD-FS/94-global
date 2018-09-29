class CreateEnterpriseOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :enterprise_offices do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.decimal :latitude
      t.decimal :longitude
      t.references :enterprise, foreign_key: true

      t.timestamps
    end
  end
end
