require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class BooleanTest < MiniTest::Test
  def test_odd?
    value1 = 1

    assert value1.odd?, 'value not odd!'
    # assert_equal(true, value2.odd?)
  end
end

class BooleanTest < MiniTest::Test
  def test_odd?
    value1 = 1

    assert_equal(true, value1.odd?)
  end
end