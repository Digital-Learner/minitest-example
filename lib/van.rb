class Van

  def initialize
    @bikes = []
  end

  def <<(bike) # receive_bike
    @bikes << bike
  end

  def count_bikes
    @bikes.count
  end

  def release_bike(bike)
    raise "There are no bikes." if @bikes.count <= 0
    @bikes.delete(bike)
  end

end