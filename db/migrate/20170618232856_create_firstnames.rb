class CreateFirstnames < ActiveRecord::Migration[5.1]
  def change
    create_table :firstnames do |t|
      t.text :content

      t.timestamps
    end
  end
end
