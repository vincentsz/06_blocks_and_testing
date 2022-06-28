# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.
require 'minitest/autorun'

class Includestest < MiniTest::Test
  def test_includes?
    coll = ['abc', 'xyz']

    assert_includes(coll, 'xyz')
  end
end