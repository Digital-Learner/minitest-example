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
    @boris_bikes.load_station_with_initial_bikes(10)
  end

  def test_person_take_bikes
    @boris_bikes.person_takes_bike
    assert_equal 9, @boris_bikes.station.bikes.length
    assert_equal true, @boris_bikes.person.has_bike?
  end

  def test_person_return_bikes

  end

  def test_station_with_bikes_is_created
    assert @boris_bikes.station
    assert_equal 10, @boris_bikes.station.bikes.count
  end

  def test_person_is_created
    assert @boris_bikes.person
  end

  def test_van_is_created
    assert @boris_bikes.van 
  end

  def test_garage_is_created
    assert @boris_bikes.garage
  end

end

__END__

  def test_van_moves_bikes_from_station_to_garage_when_there_are_broken_bikes_at_a_station

  end

  def test_van_moves_bikes_from_station_to_garage_when_there_are_fixed_bikes_at_the_garage

  end

  def test_van_moves_bikes_from_station_to_garage_when_there_are_fixed_bikes_at_the_garage

  end

  def test_van_moves_bikes_from_station_to_station_to_level_the_load_if_there_are_no_bikes_to_fix

  end
