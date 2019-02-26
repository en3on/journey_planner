require './station_list'



def get_origin_station(stations_arr)
  while true
    puts()
    print("Enter origin station: ")
    user_input = gets.strip
    
    outcome_arr = []

    stations_arr.each { |station|
      station_name = station.return_name()
      outcome_arr << (
        if station_name.upcase == user_input.upcase
         true
      else
       false
      end
      ) 
    }


    if outcome_arr.include?(true)
      stations_arr.each { |station|
        if user_input.upcase == station.return_name().upcase
          return station
        end
      }
    else
      puts()
      puts("Please enter a valid station!")
    end
  end
end

def get_destination_station(stations_arr)
  while true
    puts()
    print("Enter destination station: ")
    user_input = gets.strip

    outcome_arr = []

    stations_arr.each { |station|
      station_name = station.return_name()
      outcome_arr << (
        if station_name.upcase == user_input.upcase 
          true
      else
       false
      end 
    )
    }

    if outcome_arr.include?(true)
      stations_arr.each { |station|
        if user_input.upcase == station.return_name().upcase
          return station
        end
      }
    else
      puts()
      puts("Please enter a valid station!")
    end
  end
end
