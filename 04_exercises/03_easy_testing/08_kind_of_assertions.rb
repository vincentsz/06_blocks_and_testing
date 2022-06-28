# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).
require 'minitest/autorun'

class KindOfTest < Minitest::Test
  def test_kind_of
    obj1 = Numeric.new
    obj2 = 5
    obj3 = 5.5

    assert_kind_of(Numeric, obj1)
    assert_kind_of(Numeric, obj2)
    assert_kind_of(Numeric, obj3)
  end
end