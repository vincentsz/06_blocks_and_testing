require 'minitest/autorun'

require_relative 'car'

class CarTest < MiniTest::Test
  def test_car_exists
    car = Car.new
    assert(car)
  end
end
