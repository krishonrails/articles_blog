class CreateThings < ActiveRecord::Migration
  def change
    create_table :things, {:id=>false,:primery_key=>:status} do |t|
    	t.string :status
    	t.string :first_name
        t.string :last_name
      t.timestamps
    end
  end
end
