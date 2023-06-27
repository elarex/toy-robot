
require "./table.rb"

module Action

  def place(x, y, f)
    table.place_robot(x, y)
    self.direction = f if Table::DIRECTIONS.include?(f)
  end

  # MOVE: will move the toy robot one unit forward in the direction it is currently facing.
  def move()
    case self.direction
    when 'NORTH'
      table.tile += Table::DIM_X unless table.tile > (Table::TILES - Table::DIM_X)
    when 'EAST'
      table.tile += 1 unless (table.tile % Table::DIM_X) == 0
    when 'SOUTH'
      table.tile -= Table::DIM_Y unless table.tile <= Table::DIM_Y
    when 'WEST'
      table.tile -= 1 unless (table.tile % Table::DIM_X) == 1
    end
  end

  def right()
    idx = Table::DIRECTIONS.index(self.direction)
    self.direction = Table::DIRECTIONS[(idx + 1) % 4]
  end

  def left()
    idx = Table::DIRECTIONS.index(self.direction)
    self.direction = Table::DIRECTIONS[idx - 1]
  end

end

