class CreateMotherTongues < ActiveRecord::Migration[5.1]
  def change
    create_table :mother_tongues do |t|
      t.text :content

      t.timestamps
    end
  end
end
