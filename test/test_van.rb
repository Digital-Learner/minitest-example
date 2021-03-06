require './lib/location'
require './lib/station'
require './lib/bike'
require './lib/van' # the class under test
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestVan < MiniTest::Unit::TestCase

  def setup
    @van = Van.new 
  end

  def test_van_release
    bike = Bike.new
    @van << bike
    assert_equal 1, @van.count_bikes
    @van.release_bike(bike)
    assert_equal 0, @van.count_bikes
  end

  def test_van_cannot_release_nonexistant_bikes
    assert_raises(RuntimeError) {
      @van.release_bike(Bike.new)
    }
  end
end
