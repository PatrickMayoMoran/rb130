require 'minitest/autorun'

require_relative 'car'

class CarTest < Minitest::Test
  def test_wheels
    car = Car.new
    assert_equal(4, car.wheels)
  end

  def test_car_exists
    car = Car.new
    assert(car)
  end

  def test_name_is_nil
    car = Car.new
    assert_nil(car.name)
  end

  def test_bad_wheels
    skip("You skipped me!")
    car = Car.new
    assert_equal(3, car.wheels)
  end
end
