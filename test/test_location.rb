require './lib/location' # the class under test
require './lib/station'
require './lib/bike'
require './lib/van'
require './lib/garage'
require './lib/person'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestLocation < MiniTest::Unit::TestCase

  def setup
    @location = Location.new
  end

  def test_location_can_receive_bikes
    bike = Bike.new
    @location << bike 
    assert_equal 1, @location.bikes.count
  end

  def method_name
    
  end

end