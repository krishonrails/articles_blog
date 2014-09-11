class FixupProductOrderTable < ActiveRecord::Migration
  #require_relative '20140908032429_create_product_order_table'
  def change
  	change_table :products do |t|
  	t.string :myname
  	t.references :orders
  end
end
end

