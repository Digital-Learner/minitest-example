require './lib/station' # the class under test
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output
require './lib/bike'

class TestStation < MiniTest::Unit::TestCase

  def setup
    @station = Station.new
  end

  def test_if_station_is_created_with_empty_bikes_array
    assert @station.count_bikes == 0 
  end

  def test_station_can_receive_bikes
    bike = Bike.new
    @station << bike 
    assert @station.count_bikes == 1 
  end

  def test_station_can_release_bikes
    bike = Bike.new
    @station << bike
    #@station << bike  - is this overkill?
    @station.release_bike
    assert @station.count_bikes == 0 
  end
end
