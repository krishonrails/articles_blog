class ExampleMigration < ActiveRecord::Migration

  # def up
  #   create_table :products2 do |t|
  #     t.references :bells
  #   end
 
  #   # add a foreign key
  #   execute <<-SQL
  #     ALTER TABLE products2
  #       ADD CONSTRAINT fk_products_categories
  #       FOREIGN KEY (bells_id)
  #       REFERENCES bells(id)
  #   SQL
 
  #   add_column :things, :home_page_url, :string
  #   rename_column :things, :status, :status_address
  # end
 
  # def down
  # 	rename_column :things, :status_address,:status
  #   remove_column :things, :home_page_url
 
  #   execute <<-SQL
  #     ALTER TABLE products2
  #       DROP FOREIGN KEY fk_products_categories
  #   SQL
 
  #   drop_table :products2
  # end
end


##sqlite3 does not support add constraint..