class Station
  def initialize(name, line_arr, lines_can_reach_arr)
    @name = name
    @lines = line_arr
    @lines_can_reach = lines_can_reach_arr
  end

  def return_name()
    @name
  end

  def return_lines()
    @lines
  end

  def return_lines_can_reach()
    @lines_can_reach
  end
end
