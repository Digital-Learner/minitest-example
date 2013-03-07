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


end