class CreateOrderAlignments < ActiveRecord::Migration[5.1]
  def change
    create_table :order_alignments do |t|
      t.text :content

      t.timestamps
    end
  end
end
