require './user_input'
require './station_list'
require './journey_finder'
require 'pry'

# Debug mode option. 
@debug = false 

binding.pry unless !@debug

origin_station = get_origin_station(@stations_arr)
destination_station = get_destination_station(@stations_arr)

#if is_on_same_line?(origin_station, destination_station)
  #puts("No need for a changeover! Just stay on the same train!") 
#else
  journey = find_connections(origin_station, destination_station)

  puts
  puts(journey)

  binding.pry unless !@debug
  
  #puts("Start journey at: #{origin_station.return_name()}")
  #for i in 0...intersecting_station.length
    #puts("Change over at: #{intersecting_station[i].return_name()}")
  #end
  #puts("Arrive at: #{destination_station.return_name()}")
#end
