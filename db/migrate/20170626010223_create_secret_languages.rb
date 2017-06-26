class CreateSecretLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :secret_languages do |t|
      t.text :content

      t.timestamps
    end
  end
end
