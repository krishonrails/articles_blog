class CreateProductOrderTable < ActiveRecord::Migration
  def change
    create_join_table :products,:orders do |t|
    end
  end
end
