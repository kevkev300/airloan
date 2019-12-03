class AddPhotoToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :photo, :string
  end
end
