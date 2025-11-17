require "test_helper"

class MathHelperTest < ActiveSupport::TestCase
  test "divide numbers" do
    assert_equal 2, MathHelper.divide(6, 3)
  end
end
