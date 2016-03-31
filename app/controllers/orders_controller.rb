class OrdersController < ApplicationController
  def index
    @orders = Order.where("status != ?", 'cart').order("purchased_at desc")
  end

  def show
    @order = Order.find_by id: params[:id]
  end
end
