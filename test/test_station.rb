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
    assert @station.count_bikes == 1 
    @station.release_bike
    assert @station.count_bikes == 0 
  end

  def test_return_broken_bikes
    create_single_working_and_single_broken_bikes
    assert_equal 1, @station.broken_bikes.length
  end

  def test_return_working_bikes
    create_single_working_and_single_broken_bikes
    assert_equal 1, @station.working_bikes.length 
  end

  def test_cant_receive_when_over_capacity
    # make sure an returns false when full and doesn't add bike
  end

  private

    def create_single_working_and_single_broken_bikes
      broken_bike = Bike.new
      broken_bike.break!
      working_bike = Bike.new
      @station << broken_bike
      @station << working_bike
    end

end
