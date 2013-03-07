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

  def broken_bikes 
    @bikes.select { |bike| bike.broken? }
  end

  def working_bikes 
    @bikes.reject { |bike| bike.broken? }
  end
end