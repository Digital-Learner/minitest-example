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
    @person.take_bike_from(station)# if not @person.has_bike? 
    assert_equal true, @person.has_bike?
    assert_equal 0, station.bikes.count
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
end