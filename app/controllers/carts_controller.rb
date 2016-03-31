class CartsController < ApplicationController

  before_action do
    if @current_user.nil?
      redirect_to log_in_path
    end
  end

  def add_to_cart
    @book = Book.find_by id: params[:book_id]

    order = Order.find_by status: 'cart', user_id: @current_user.id

    if order.nil?
      order = Order.new
      order.user = @current_user
      order.purchased_at = Time.now
      order.save
    end

    orderitem = Orderitem.find_by order_id: order.id, book_id: @book.id
    if orderitem.present?
      orderitem.quantity = orderitem.quantity + 1
    else
      orderitem = Orderitem.new
      orderitem.order = order
      orderitem.book = @book
      orderitem.price = @book.price
      orderitem.shipping_cost = 0
      orderitem.quantity = 1
    end
    orderitem.save
    redirect_to cart_path
  end

  def remove_from_cart
    order = Order.find_by status: 'cart', user_id: @current_user.id
    @book = Book.find_by id: params[book_id]

    orderitem = Orderitem.find_by order_id: order.id, book_id: @book.id
    orderitem.destroy

    redirect_to cart_path
  end

  def view
    @order = Order.find_by status: 'cart', user_id: @current_user.id
    if @order.nil?
      @order = Order.new
      @order.user = @current_user
      @order.purchased_at = Time.now
      @order.save
    end
  end
end
