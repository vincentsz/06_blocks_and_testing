require 'minitest/autorun'

require_relative 'car'

class CarTest < MiniTest::Test
  def test_name_is_nil
    car = Car.new
    assert_nil(car.name)
  end
end
