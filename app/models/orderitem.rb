class Orderitem < ActiveRecord::Base

  belongs_to :order
  belongs_to :book

  def total_price
    quantity * price
  end
end
