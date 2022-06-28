# Write a minitest assertion that will fail if value is not an instance of the Numeric class exactly. 
# value may not be an instance of one of Numeric's superclasses.
require 'minitest/autorun'

class TypeTest < MiniTest::Test
  def test_type
    obj = Numeric.new
    assert_instance_of(Numeric, obj)
  end
end