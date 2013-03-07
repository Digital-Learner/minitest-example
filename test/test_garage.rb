require './lib/station' # the class under test
require './lib/bike'
require './lib/van'
require './lib/garage'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestGarage < MiniTest::Unit::TestCase

  def setup
    @garage = Garage.new
  end

  def test_take_bike
    bike = Bike.new
    @garage << bike
    assert_equal 1, @garage.count_bikes
  end

  def test_release_bike
    bike = Bike.new
    @garage << bike
    assert_equal 1, @garage.count_bikes
    @garage.release_bike
    assert_equal 0, @garage.count_bikes
  end
end
