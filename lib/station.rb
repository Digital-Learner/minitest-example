class Station

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def <<(bike) # receive_bike
    @bikes << bike
  end

  def release_bike
    @bikes.pop
  end

  def broken_bikes 
    @bikes.select { |bike| bike.broken? }
  end
end