class Person

  def initialize
    @bike = false
  end

  def has_bike?
    @bike != false
    # !!@bike # This is the ruby magic way of doing @bike != false
   end

  def take_bike_from(station, bike)
    @bike = station.release_bike(bike)
  end

  def return_bike_to(station)
    station.bikes << @bike
    @bike = false
  end

end