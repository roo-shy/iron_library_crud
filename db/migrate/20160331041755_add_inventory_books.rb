class AddInventoryBooks < ActiveRecord::Migration
  def change
    add_column :books, :inventory, :integer, default: 0
    add_column :books, :shipping_cost, :decimal, default: 0
  end
end
