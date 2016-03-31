class Orderitem < ActiveRecord::Base

  belongs_to :user
  belongs_to :Orderitem

  def total_price
    quantity * price    
  end
end
