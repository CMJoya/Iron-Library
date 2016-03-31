class CheckoutController < ApplicationController

  before_action do
    if @current_user.nil?
      redirect_to log_in_path
    end
  end

  def start
    @order = Order.find_by status: 'cart', user_id: @current_user.id
  end

  def process_payment
    @order = Order.find_by status: 'cart', user_id: @current_user.id
    card_toke = params[:stripeToken]
  end

  def receipt

  end

end
