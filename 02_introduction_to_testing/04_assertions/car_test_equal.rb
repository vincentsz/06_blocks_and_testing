require 'minitest/autorun'

require_relative 'car'

class CarTest < MiniTest::Test
  def test_wheels
  car = Car.new
  assert_equal(4, car.wheels)
  end
end