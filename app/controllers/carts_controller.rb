class CartsController < ApplicationController

  before_action do
    if @current_user.nil?
      redirect_to sign_in_path
    end
  end

   def add_to_cart
     @book = Book.find_by id: params[:book_id]
     order = Order.find_by status: 'cart', user_id: @current_user.id
     if order.nil?
       order = Order.new
       order.user = @current_user
       order.purchased_at = Time.now
       order.save!
      end

     order_item = OrderItem.find_by order_id: order.id, book_id: @book.id
     if order_item.present?
       order_item.quantity = order_item.quantity + 1
     else
      order_item = OrderItem.new
      order_item.order = order
      order_item.book = @book
      order_item.price = @book.price
      order_item.shipping_cost = 0
      order_item.quantity = 1
    end
    order_item.save!

    # this was a POST, so we need to redirect somewhere
    redirect_to cart_path
  end

    def remove_from_cart
       order = Order.find_by status: 'cart', user_id: @current_user.id
       @book = Book.find_by id: params[:book_id]

       # how do I find the order_item
       order_item = OrderItem.find_by order_id: order.id, book_id: @book.id
       order_item.destroy
       redirect_to cart_path
   end

    def view
    @order = Order.find_by status:'cart', user_id: @current_user.id
    end

    def process_payment
    @order = Order.find_by status: 'cart', user_id: @current_user.id

    card_token = params[:stripeToken]
    # Stripe.api_key = ""

    Stripe::Charge.create(
      :amount => @order.total_price_in_cents,
      :currency => "usd",
      :source => card_token,
      :description => @order.description
    )

    @order.update status: 'pending'

    redirect_to receipt_path(id: @order.id)
   end

  end
