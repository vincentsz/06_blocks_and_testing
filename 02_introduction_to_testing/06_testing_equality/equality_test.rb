require 'minitest/autorun'

class EqualityTest < MiniTest::Test
  def test_value_equality
    v1 = "string"
    v2 = "string"

    assert_equal(v1,v2)
    assert_same(v1,v2)
  end
end