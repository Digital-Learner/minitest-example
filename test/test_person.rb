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

  # def test_take_bike
  #   bike = Bike.new
  #   @person.take_bike if not @person.has_bike? 
  #   assert_equal true, @person.has_bike?
  # end

  def test_return_bike
  end

  def test_has_bike?
    bike = Bike.new
    assert_equal false, @person.has_bike?
  end

end
