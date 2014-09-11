class CreateBells < ActiveRecord::Migration
  def change
    create_table :bells do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :bells, :description
  end
end
