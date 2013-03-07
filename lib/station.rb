class Station

  def initialize
    @bikes = []
  end

  def <<(bike)
    @bikes << bike
  end

  def count_bikes
    @bikes.count 
  end

  def release_bike
    @bikes.pop
  end

end