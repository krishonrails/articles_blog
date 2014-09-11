class CreateJoinProductOrderTable < ActiveRecord::Migration
  def change
    create_join_table :products ,:orders, table_name: :categorization do |t|
    	t.index :order_id
    	t.index :product_id
    end
  end
end
