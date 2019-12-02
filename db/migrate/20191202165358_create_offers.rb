class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :currency
      t.integer :amount
      t.integer :interes
      t.text :description
      t.text :bank_account
      t.text :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
