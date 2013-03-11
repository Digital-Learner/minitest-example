require './lib/station'
require './lib/bike'
require './lib/van'
require './lib/garage'
require './lib/person'
require './lib/boris_bikes' # the class under test
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestBorisBikes < MiniTest::Unit::TestCase

  def setup
    @boris_bikes = BorisBikes.new
  end

  def test_people_take_bikes

  end

  def test_van_moves_bikes_from_station_to_garage_when_there_are_broken_bikes_at_a_station

  end

  def test_van_moves_bikes_from_station_to_garage_when_there_are_fixed_bikes_at_the_garage

  end

  def test_van_moves_bikes_from_station_to_garage_when_there_are_fixed_bikes_at_the_garage

  end

  def test_van_moves_bikes_from_station_to_station_to_level_the_load_if_there_are_no_bikes_to_fix

  end

  def test_people_return_bikes

  end

  def test_stations_with_bikes_are_created

  end

  def test_people_are_created

  end

  def test_van_is_created
    assert @boris_bikes.van 
  end

  def test_garage_is_created
    assert @boris_bikes.garage
  end

end