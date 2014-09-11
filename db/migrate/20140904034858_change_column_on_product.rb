class ChangeColumnOnProduct < ActiveRecord::Migration
  # def change
  #   reversible do |dir|
  #     change_table :products do |t|
  #       dir.up   {t.change :price, :string}
  #       dir.down {t.change :price, :integer}
  #     end
  #   end
  # end
  def up
    change_table :products do |t|
      t.change :price, :string
    end
  end

  def down
    change_table :products do |t|
      t.change :price, :integer
    end
  end
end
