class CreateObsessions < ActiveRecord::Migration[5.1]
  def change
    create_table :obsessions do |t|
      t.text :content

      t.timestamps
    end
  end
end
