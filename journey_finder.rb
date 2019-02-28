require './journey_functions'
require './station_list'
require './user_input'
require 'pry'
require 'colorize'

include PathFinderFunctions
# def is_on_same_line?(origin, destination)

@previous_stations =  []
@excluded_stations = []
@station_found = false

def path_finder(origin, destination)
  while !@station_found
    puts("\n\nCurrent station: ".colorize(:red) + "#{origin.return_name()}".colorize(:light_green)) unless !@debug
    puts("Destination: #{destination.return_name()}".colorize(:blue)) unless !@debug

    if (origin == destination) 
      return "station_return" 
    else

      origin_station = nil

      origin_connections = origin.return_connections()

      #binding.pry unless !@debug 

# when checking for includes_all_connections, remove excluded station from previous origin_connections first

      origin_connections_without_excluded_stations = []
      origin_connections.each { |connection|

        origin_connections_without_excluded_stations << connection if !@excluded_stations.include?(connection)

      }

      if includes_all_connections(origin_connections_without_excluded_stations)
        binding.pry unless !@debug
        origin_station_name = @previous_stations.pop()

        @stations_arr.each { |station|
          origin_station = station if station.return_name() == origin_station_name
        }

        @excluded_stations << origin.return_name()
        return "DIE" if path_finder(origin_station, destination) == "DIE"

        return "DIE" if return_station(station) == "DIE" if path_finder(origin_station, destination) == "station_return"

      else

        # else statement
        binding.pry unless !@debug

        origin_connections.each { |station_name|
          #binding.pry unless !@debug
          @stations_arr.each { |station|
            if !@previous_stations.include?(station_name) && !@excluded_stations.include?(station_name) 
              if station.return_name() == station_name

                #binding.pry unless !@debug

                origin_station = add_to_prev_set_origin_station(station, origin)

                return "DIE" if path_finder(origin_station, destination) == "DIE"

                return return_station_if_path_finder_returns_station(station, origin_station, destination)
                #return "DIE" if return_station(station) == "DIE" if path_finder(origin_station, destination) == "station_return"

                #binding.pry unless !@debug
                break
              end
            end
          }

        }
      end
    end
  end
end
