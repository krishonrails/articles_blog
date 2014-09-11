class SupressMessages < ActiveRecord::Migration
  def change
    suppress_messages do
      create_table :products3 do |t|
        t.string :name
        t.text :description
        t.timestamps
      end
    end
 
    say "Created a table"
 
    suppress_messages {add_index :products3, :name}
    say "and an index!", true
 
    say_with_time 'Waiting for a while' do
      sleep 10
      250
    end
  end
end
