require "test_helper"

class OrderTest < ActiveSupport::TestCase
  def order
    @order ||= Order.new
  end

  def test_valid
    assert order.valid?
  end
end
