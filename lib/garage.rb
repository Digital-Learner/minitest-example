class Garage

  def initialize
    @bikes = []
  end

  def <<(bike)
    @bikes << bike
  end

  def release_bike(bike)
    raise "There are no bikes." if @bikes.count <= 0
    @bikes.delete(bike)
  end

  def count_bikes
    @bikes.count
  end

end
