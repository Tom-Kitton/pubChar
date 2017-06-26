class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.integer :age
      t.text :ethnicity
      t.text :nationality
      t.text :mother_tongue
      t.text :occupation
      t.text :lastname
      t.text :firstname
      t.text :gender
      t.text :obsession
      t.text :order_alignment
      t.text :secret_language
      t.text :moral_alignment
      t.text :eye_colour
      t.text :skin_base_tone
      t.text :favourite_food
      t.text :favourite_drink
      t.text :ailment
      t.text :star_sign

      t.timestamps
    end
  end
end
