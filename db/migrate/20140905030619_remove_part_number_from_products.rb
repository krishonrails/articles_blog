class RemovePartNumberFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :part_number2, :string
  end
end
