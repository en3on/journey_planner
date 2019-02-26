class Station
  def initialize(name, line_arr, station_connections)
    @name = name
    @lines = line_arr
    @connections = station_connections
  end

  def return_name()
    @name
  end

  def return_lines()
    @lines
  end

  def return_connections()
    @conections
  end
end
