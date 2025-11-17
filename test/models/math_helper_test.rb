require "test_helper"

class MathHelperTest < ActiveSupport::TestCase
  test "divide positive numbers" do
    assert_equal 2, MathHelper.divide(6, 3)
  end

  test "divide by zero returns nil" do
    assert_nil MathHelper.divide(5, 0)
  end

  test "divide negative and positive" do
    assert_equal(-4, MathHelper.divide(-8, 2))
  end
end
