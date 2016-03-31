class OrdersController < ApplicationController

  before_action do
    if @current_user.nil?
      redirect_to log_in_path
    end
  end

  def index
    @orders = Order.where("status != ?", 'cart').order("purchased_at desc")
  end

  def show
    @order = Order.find_by id: params[:id]
  end
end
