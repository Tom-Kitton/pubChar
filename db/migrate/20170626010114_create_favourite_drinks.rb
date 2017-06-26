class CreateFavouriteDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :favourite_drinks do |t|
      t.text :content

      t.timestamps
    end
  end
end
