class AddPrice2ToProducts < ActiveRecord::Migration
  def change
    add_column :products, :part_number2, :string
    add_index :products, :part_number2
  end
end
