class CreateSkinBaseTones < ActiveRecord::Migration[5.1]
  def change
    create_table :skin_base_tones do |t|
      t.text :content

      t.timestamps
    end
  end
end
