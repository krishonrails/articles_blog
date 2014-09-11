class RenameIndexForPartNoOnProducts < ActiveRecord::Migration
  def change
  	rename_index :products,:index_products_on_part_no,:index_products_on_part_number
	remove_reference(:products, :supplier, polymorphic: true)
  end
end
