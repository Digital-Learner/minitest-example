require './lib/station' # the class under test
require './lib/bike'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestStation < MiniTest::Unit::TestCase

  def setup
    @station = Station.new
  end

  def test_if_station_is_created_with_empty_bikes_array
    assert_equal 0, @station.count_bikes
  end

  def test_station_can_receive_bikes
    bike = Bike.new
    @station << bike 
    assert_equal 1, @station.count_bikes
  end

  def test_station_can_release_bikes
    bike = Bike.new
    @station << bike
    assert_equal 1, @station.count_bikes
    @station.release_bike
    assert_equal 0, @station.count_bikes
  end

  def test_count_of_broken_bikes
    create_single_working_and_single_broken_bike
    assert_equal 1, @station.broken_bikes.length
  end

  def test_count_of_non_broken_bikes
    create_single_working_and_single_broken_bike
    assert_equal 1, @station.count_bikes - @station.broken_bikes.count
    # not sure if this is absolute (length) chose to use count as more versatile?
  end

  private

    def create_single_working_and_single_broken_bike
      broken_bike = Bike.new
      broken_bike.break!
      working_bike = Bike.new
      @station << broken_bike
      @station << working_bike
    end
end
