class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.string :status
      t.references :user, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
