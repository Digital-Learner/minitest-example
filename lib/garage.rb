class Garage

  def initialize
    @bikes = []
  end

  def <<(bike)
    @bikes << bike
  end

  def release_bike(bike)
    @bikes.pop
  end

  def count_bikes
    @bikes.count
  end

end
