class Order < ActiveRecord::Base

  belongs_to :user
  has_many :orderitems

  def total_price
    orderitems.map { |orderitem| orderitem.total_price}.sum
  end

  def desciption
    "Order ##{id}.#{orderitems.map{ |oi| oi.product.name}.join(", ")}"

  end

  def total_price_in_cents
    (total_price * 100).to_i

  end

end
