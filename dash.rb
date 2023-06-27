
require "./robot.rb"

class Dash

  def self.go()

    # create the table
    table = Table.new()

    # create the robot
    robot = table.robot

    # loop for input
    # p robot.status
    while (input = readline())
      cmd, params = input&.split()
      params = params&.split(',')
      case cmd
      when 'PLACE'
        robot.place(*params)
      when 'MOVE'
        robot.move()
      when 'REPORT'
        puts "Output: #{robot.status().join(',')}"
        #quit on report
        break
      when 'LEFT'
        robot.left()
      when 'RIGHT'
        robot.right()
      else
        # not a known operation
      end
    end
  end


  def self.auto()
    table = Table.new()
    robot = table.robot
    # place randomly
    robot.place(rand(Table::DIM_X), rand(Table::DIM_Y), Table::DIRECTIONS.sample)

    p "Starting at:"
    p robot.status.join(',')
    (5 + rand(10)).times do |step|
      action = [:left, :right, :move].sample
      p action
      robot.send(action)
      p robot.status.join(',')
    end

  end
end

# Dash.go()

Dash.auto()
