require './lib/bike' # the class under test
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestBike < MiniTest::Unit::TestCase

  def setup
    @bike = Bike.new
  end

  def test_bike_is_not_broken_by_default
    assert_equal false,  @bike.broken?
  end

  def test_bike_can_be_broken
    @bike.break!    
    assert @bike.broken?
  end
end