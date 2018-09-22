class CreateReportTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :report_types do |t|
      t.string :name
      t.references :report_category, foreign_key: true
      t.string :picture
      t.references :report_class, foreign_key: true

      t.timestamps
    end
  end
end
