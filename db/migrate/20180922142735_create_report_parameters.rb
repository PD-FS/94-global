class CreateReportParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :report_parameters do |t|
      t.references :report_type, foreign_key: true
      t.string :name
      t.string :dataType
      t.string :optional
      t.string :referenced_table
      t.string :html_visualization

      t.timestamps
    end
  end
end
