class CreateCivicoins < ActiveRecord::Migration[5.2]
  def change
    create_table :civicoins do |t|
      t.references :user, foreign_key: true
      t.string :app
      t.string :transaction
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
