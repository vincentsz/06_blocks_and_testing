require 'minitest/autorun'

require_relative 'car'

class CarTest < MiniTest::Test
  def test_instance_of_car
    car = Car.new
    assert_instance_of(Car, car)
  end
end