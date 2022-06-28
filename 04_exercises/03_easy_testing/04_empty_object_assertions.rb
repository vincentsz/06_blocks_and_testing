# Write a minitest assertion that will fail if the Array list is not empty.
require 'minitest/autorun'


class EmptyObjectTest < MiniTest::Test
  def test_empty?
    value = []

    assert_empty value
  end
end

# class EmptyObjectTest < MiniTest::Test
#   def test_empty?
#     value = []

#     assert_equal(true, value.empty?)
#   end
# end