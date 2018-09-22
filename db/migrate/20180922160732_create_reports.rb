class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :report_type, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.string :votes
      t.string :totalCalification

      t.timestamps
    end
  end
end
