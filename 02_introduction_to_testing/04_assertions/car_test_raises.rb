require 'minitest/autorun'

require_relative 'car'

class CarTest < MiniTest::Test
  def test_raise_init_w_arg
    assert_raises(ArgumentError) do
      car = Car.new(name: "Joey")
    end
  end
end
