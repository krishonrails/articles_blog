class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price3, :decimal, precision: 5, scale: 2
    add_reference :products, :supplier, polymorphic: true, index: true
  end
end
