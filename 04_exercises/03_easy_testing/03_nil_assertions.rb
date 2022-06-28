# Write a minitest assertion that will fail if value is not nil.
require 'minitest/autorun'

class NilTest < MiniTest::Test
  def test_nil
    value = nil

    assert_nil value
  end
end

# => DEPRECATED in MiniTest 6
# class NilTest < MiniTest::Test
#   def test_nil
#     value = nil

#     assert_equal(nil, value)
#   end
# end