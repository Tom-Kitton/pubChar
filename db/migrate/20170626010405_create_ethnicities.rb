class CreateEthnicities < ActiveRecord::Migration[5.1]
  def change
    create_table :ethnicities do |t|
      t.text :content

      t.timestamps
    end
  end
end
