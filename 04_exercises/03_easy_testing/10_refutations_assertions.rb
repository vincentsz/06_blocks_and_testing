# Write a test that will fail if 'xyz' is one of the elements in the Array list:
require 'minitest/autorun'

class RefuteIncludeTest < Minitest::Test
  def test_refute_include
    coll = ['abc']
    refute_includes(coll, 'xyz')
  end
end