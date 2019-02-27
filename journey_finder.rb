
require './station_list'
require './user_input'
require 'pry'

# def is_on_same_line?(origin, destination)

@previous_stations =  []
@excluded_stations = []
@station_found = false

def path_finder(origin, destination)
  while !@station_found
    puts("\n\nCurrent station: #{origin.return_name()}")
    puts("Destination: #{destination.return_name()}")

    if (origin == destination) 
      return "station_return" 
    else

      origin_station = nil

      origin_connections = origin.return_connections()

      binding.pry unless !@debug 

# when checking for includes_all_connections, remove excluded station from previous origin_connections first

      origin_connections_without_excluded_stations = []
      origin_connections.each { |connection|
        if !@excluded_stations.include?(connection)
          origin_connections_without_excluded_stations << connection
        end
      }

      if includes_all_connections(origin_connections_without_excluded_stations)
        binding.pry unless !@debug
        origin_station_name = @previous_stations.pop()

        @stations_arr.each { |station|
          if station.return_name() == origin_station_name
            origin_station = station
          end
        }

        @excluded_stations << origin.return_name()
        if (path_finder(origin_station, destination) == "station_return")
          puts("#{station.return_name()} returned")
          @station_found = true
        end
      else

        # else statement
        binding.pry unless !@debug

        origin_connections.each { |station_name|
          binding.pry unless !@debug
          @stations_arr.each { |station|
            if !@previous_stations.include?(station_name) && !@excluded_stations.include?(station_name) 
              if station.return_name() == station_name

                binding.pry unless !@debug

                @previous_stations << origin.return_name() 
                origin_station = station

                if (path_finder(origin_station, destination) == "station_return")
                  puts("#{station.return_name()} returned")
                  @station_found = true
                end

                binding.pry unless !@debug
                break
              end
            end
          }

        }
      end
    end
  end
end

def includes_all_connections(origin_connections)
  outcome_arr = origin_connections.map { |connection|
    puts("#{connection} is current connection")
    puts("Is current connection included in previous stations? #{@previous_stations.include?(connection)}")
    @previous_stations.include?(connection)
  }

  return !outcome_arr.include?(false)
end

def find_connections(origin, destination)
  while !@station_found
    path_finder(origin, destination)
  end
  return "finished"
end
