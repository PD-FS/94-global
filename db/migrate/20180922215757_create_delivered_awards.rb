class CreateDeliveredAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :delivered_awards do |t|
      t.references :user, foreign_key: true
      t.references :award, foreign_key: true

      t.timestamps
    end
  end
end
