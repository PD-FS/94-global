class CreateReportClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :report_classes do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
