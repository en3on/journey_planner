module PathFinderFunctions
  def kill_stack_if_path_finder_returns_die(origin_station, destination)
    return "DIE" if path_finder(origin_station, destination) == "DIE"
  end

  def return_station_if_path_finder_returns_station(station, origin_station, destination)
    return return_station(station) if path_finder(origin_station, destination) == "station_return"
  end

  def includes_all_connections(origin_connections)
    outcome_arr = origin_connections.map { |connection|
      puts("#{connection}".colorize(:blue) + " is current connection".colorize(:green)) unless !@debug
      puts("Is current connection included in previous stations? ".colorize(:red) + "#{@previous_stations.include?(connection)}".colorize(:yellow)) unless !@debug
      @previous_stations.include?(connection)
    }

    return !outcome_arr.include?(false)
  end

  def find_connections(origin, destination)
    while !@station_found
      path_finder(origin, destination)
    end

    @previous_stations << destination.return_name()

    return @previous_stations
  end

  def return_station(station)
    puts("#{station.return_name()} returned".colorize(:light_blue)) unless !@debug
    @station_found = true
    return "DIE"
  end

  def add_to_prev_set_origin_station(station, origin)
      @previous_stations << origin.return_name() 
       return station
  end
end
