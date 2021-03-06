require './lib/location'
require './lib/station' 
require './lib/bike'
require './lib/van'
require './lib/garage' # the class under test
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestGarage < MiniTest::Unit::TestCase

  def setup
    @garage = Garage.new
  end

  def test_inherits_from_location
    assert_instance_of Location.class, Garage.superclass
  end

  def test_release_bike
    bike = Bike.new
    @garage << bike
    assert_equal 1, @garage.count_bikes
    @garage.release_bike(bike)
    assert_equal 0, @garage.count_bikes
  end

  def test_garage_cannot_release_nonexistant_bikes
    assert_raises(RuntimeError) {
      @garage.release_bike(Bike.new)
    }
  end
end
