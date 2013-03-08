class BorisBikes

  def initialize
    @stations = stations_with_bikes
    @people = people
    @van = van
    @garage = garage
  end

  def run
    people_take_bikes
    van_moves_bikes_between_garage_and_stations
    people_return_bikes  
  end

  def report
    report = []
    report << "We have #{@stations.count} stations:"
    @stations.each {|s| reports << s.to_s}
    # and so on: people, van, garage
    report
  end

private

  def van_moves_bikes_between_garage_and_stations
    # decide where to move bikes from and to
    # a van can make only one move per run: either between stations to level capacity or from garage to station or from station to garage
    # this method is likely to call several other methods (yet to be written)
  end

end

boris_bikes = BorisBikes.new
puts boris_bikes.report
5.times do  
  boris_bikes.run
  puts boris_bikes.report
end