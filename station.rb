class Station
  def initialize(name, station_connections)
    @name = name
    @connections = station_connections
  end

  def return_name()
    @name
  end

  def return_connections()
    @connections
  end
end
