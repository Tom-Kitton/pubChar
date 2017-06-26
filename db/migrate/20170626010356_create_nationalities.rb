class CreateNationalities < ActiveRecord::Migration[5.1]
  def change
    create_table :nationalities do |t|
      t.text :content

      t.timestamps
    end
  end
end
