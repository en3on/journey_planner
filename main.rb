require './user_input'
require './station_list'
require './journey_finder'
require 'pry'

# Debug mode option. 
@debug = false 

def display_station_list()
  binding.pry unless !@debug

  puts("**** Station list ****")
  puts
  for station in 0...@stations_arr.length
    puts @stations_arr[station].return_name()
  end
end

system `clear`
display_station_list()
origin_station = get_origin_station(@stations_arr)

system `clear`
display_station_list()
destination_station = get_destination_station(@stations_arr)

system `clear`

journey = find_connections(origin_station, destination_station)

puts("Stop list: ")
puts
#puts(journey)

for station_num in 1..journey.length
  puts("#{station_num}. #{journey[station_num - 1]}")
end

binding.pry unless !@debug
  
