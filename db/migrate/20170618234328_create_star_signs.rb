class CreateStarSigns < ActiveRecord::Migration[5.1]
  def change
    create_table :star_signs do |t|
      t.text :content

      t.timestamps
    end
  end
end
