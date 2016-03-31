require "test_helper"

class OrderitemTest < ActiveSupport::TestCase
  def orderitem
    @orderitem ||= Orderitem.new
  end

  def test_valid
    assert orderitem.valid?
  end
end
