require "./table.rb"
require "./action.rb"

class Robot
  attr_accessor :direction
  attr_accessor :table

  include ::Action

  def initialize(table)
    self.direction = Table::DIRECTIONS.first
    # self.tile = 1 #start in the SOUTH WEST corner
    self.table = table
  end

  def status
    x, y = table.coordinates
    return x, y, direction
  end
end