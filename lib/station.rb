class Station

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def <<(bike) # receive_bike
    @bikes << bike
  end

  def release_bike(bike)
    raise "There are no bikes." if @bikes.count <= 0 || @bikes.count - broken_bikes.count <= 0
    @bikes.delete(bike)
  end

  def broken_bikes 
    @bikes.select { |bike| bike.broken? }
  end
end