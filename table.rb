
class Table

  DIM_X = 9
  DIM_Y = 11

  DIRECTIONS = %w(NORTH EAST SOUTH WEST)
  TILES = DIM_X*DIM_Y

  attr_accessor :robot
  attr_accessor :tile

  def initialize
    self.robot = Robot.new(self)
    self.tile = 1
  end

  def coordinates
    north = (self.tile / DIM_Y)
    east = [0, (self.tile % DIM_X) - 1].max
    return east, north
  end

  def place_robot(x, y)
    x = [x.to_i + 1, Table::DIM_X].min
    y = [y.to_i + 1, Table::DIM_Y].min
    self.tile = x + ((y - 1)*DIM_Y)
  end
end