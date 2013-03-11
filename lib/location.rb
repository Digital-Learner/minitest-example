class Location

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def <<(bike) # receive_bike
    @bikes.include?(bike) ? (raise "Bike already there") : @bikes << bike
  end
end
