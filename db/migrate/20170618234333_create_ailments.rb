class CreateAilments < ActiveRecord::Migration[5.1]
  def change
    create_table :ailments do |t|
      t.text :content

      t.timestamps
    end
  end
end
