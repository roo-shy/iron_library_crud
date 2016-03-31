class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user

 def total_price
    order_items.map{|order_item|order_item.total_price}.sum
 end

 def description
  "Order ##{id}. #{order_items.map {|oi| oi.book.name}.join(", ")}"
 end

 def total_price_in_cents
  (total_price * 100).to_i
 end
end
