class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
          t.integer :user_id
          t.datetime :purchased_at

          t.timestamps null: false
    end
  end
end
