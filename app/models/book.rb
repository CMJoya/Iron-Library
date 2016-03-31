class Book < ActiveRecord::Base
  belongs_to :author
  has_many :orderitems

  validates :title, :author, :price, presence: true
end
