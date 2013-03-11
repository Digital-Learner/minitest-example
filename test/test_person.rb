require './lib/station' # the class under test
require './lib/bike'
require './lib/van'
require './lib/garage'
require './lib/person'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestPerson < MiniTest::Unit::TestCase

  def setup
    @person = Person.new
  end

  def test_take_bike
    station = Station.new
    bike = Bike.new
    station << bike
    @person.take_bike_from(station, bike)
    assert_equal true, @person.has_bike?
    assert_equal 0, station.bikes.count
  end

  def test_can_not_take_bike_when_has_bike
    # station = station_with_a_bike # this is failing is it because we don't have a bike?
    station = Station.new
    bike1 = Bike.new
    bike2 = Bike.new
    station << bike1 << bike2
    assert_equal 2, station.bikes.count
    assert_equal false, @person.has_bike?
    @person.take_bike_from(station, bike1)
    assert_equal true, @person.has_bike?
    assert_equal 1, station.bikes.count
    @person.take_bike_from(station, bike2) 
    assert_equal true, @person.has_bike?
    assert_equal 1, station.bikes.count
  end

  def test_return_bike
    station = Station.new
    @person.return_bike_to(station)
    assert_equal false, @person.has_bike?
    assert_equal 1, station.bikes.count
  end

  def test_has_bike?
    assert_equal false, @person.has_bike?
  end

  private

    def station_with_a_bike
      station = Station.new      
      station << Bike.new
    end
end