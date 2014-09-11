class AlterProductTable < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		t.remove :text
  		t.string :description_long
  		t.string :part_no
  		t.index :part_no
  		t.rename :name,:first_name
  	end
  end
end
# change_table :products do |t|
#   t.remove :description, :name
#   t.string :part_number
#   t.index :part_number
#   t.rename :upccode, :upc_code
# end