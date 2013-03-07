require './lib/station' # the class under test
require './lib/bike'
require './lib/van'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestVan < MiniTest::Unit::TestCase

  def setup
    @van = Van.new 
  end

  def test_van_receive_bike
    bike = Bike.new
    @van << bike 
    assert @van.count_bikes == 1
  end

  def test_van_release
    bike = Bike.new
    @van << bike
    assert @van.count_bikes == 1
    @van.release_bike
    assert @van.count_bikes == 0
  end


  private

    def create_single_working_and_single_broken_bikes
      broken_bike = Bike.new
      broken_bike.break!
      working_bike = Bike.new
      @van << broken_bike
      @van << working_bike
    end

end
