require './station_list'
require './user_input'
require 'pry'

def is_on_same_line?(origin, destination)
  origin_lines = origin.return_lines()
  destination_lines = destination.return_lines()

  outcome_arr = []

  origin_lines.each { |line|
    outcome_arr << destination_lines.include?(line)
  }

  if outcome_arr.include?(true)
    return true
  else
    return false
  end
end

@change_over_stations = []

def find_intersecting_station(origin, destination, station_arr)
  origin_lines = origin.return_lines()
  destination_lines = destination.return_lines() 

  origin_reachable_lines = origin.return_lines_can_reach()
  destination_reachable_lines = destination.return_lines_can_reach()

  origin_lines_matches = []
  destination_lines_matches = []

  intersecting_stations = []

  common_lines = []

#   station_arr.each { |station|
#     station_lines = station.return_lines()
#       station_lines.each { |line|
#         if origin_lines.include?(line)
#           origin_lines_matches << station
#         end
#         if destination_lines.include?(line)
#           destination_lines_matches << station
#         end
#       }
#   }

  stations_arr.each { |station|
    station_lines = station.return_lines_can_reach()
    station_lines.each { |line|
      if origin_reachable_lines.include?(line) && destination_reachable_lines.
        

  origin_lines_matches.each { |station|
    if destination_lines_matches.include?(station)
      intersecting_stations << station
    end
  }

  binding.pry

  if intersecting_stations.length > 0

    @change_over_stations << intersecting_stations[0]

    intersected_station = intersecting_stations[0]

    if(is_on_same_line?(intersected_station, destination))
      return @change_over_stations
    else
    find_intersecting_station(intersected_station, destination, station_arr)
    end
  else
    return @change_over_stations
  end
end

