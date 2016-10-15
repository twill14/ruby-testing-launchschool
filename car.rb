# require 'minitest/autorun'

# require_relative 'car'
# MiniTest::Reporters.use!


# class Car
#   attr_accessor :wheels

#   def initialize
#     @wheels = 4
#   end
# end


# class CarTest < MiniTest::Test
#   def test_wheels
#     car = Car.new
#     assert_equal(4, car.wheels)
#   end
# end

# class CarTest < MiniTest::Test
#   def test_wheels
#     car = Car.new
#     assert_equal(4, car.wheels)
#   end

#   def test_bad_wheels
#     car = Car.new
#     assert_equal(3, car.wheels)
#   end
# end




require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'car'

class CarTest < MiniTest::Test
  def test_wheels
    car = Car.new
    assert_equal(4, car.wheels)
  end

  def test_bad_wheels
    skip
    car = Car.new
    assert_equal(3, car.wheels)
  end
end