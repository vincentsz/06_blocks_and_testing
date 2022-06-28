require 'minitest/autorun'

require_relative 'car'

describe 'Car#wheels' do
  it 'has_4_wheels' do
    car = Car.new
    _(car.wheels).must_equal 4
  end
end