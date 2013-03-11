class BorisBikes

  attr_reader :van, :garage, :person, :station

  def initialize
    @station = Station.new
    @person = Person.new
    @van = Van.new
    @garage = Garage.new
  end

  def load_station_with_initial_bikes(number_of_bikes)
    number_of_bikes.times do |bike| 
      bike = Bike.new
      @station << bike
    end
  end

  def person_takes_bike
    @person.take_bike_from(station, station.bikes.first)
  end

end


__END__

boris_bikes = BorisBikes.new
boris_bikes.load_station_with_initial_bikes(10)
# puts boris_bikes.report
# 5.times do  
#   boris_bikes.run
#   puts boris_bikes.report
# end


  def run
    person_takes_bikes # @person.take_bike_from(station, bike)
    van_moves_bikes_between_garage_and_stations
    person_return_bikes  
  end

  def report
    report = []
    report << "We have #{@stations.count} stations:"
    @stations.each {|s| reports << s.to_s}
    # and so on: people, van, garage
    report
  end
# private

#   def van_moves_bikes_between_garage_and_stations
#     # decide where to move bikes from and to
#     # a van can make only one move per run: either between stations to level capacity or from garage to station or from station to garage
#     # this method is likely to call several other methods (yet to be written)
#   end
