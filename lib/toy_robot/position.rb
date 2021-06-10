require "toy_robot/direction"

module ToyRobot
  # The position of the Robot
  class Position
    attr_accessor :x_axis, :y_axis, :direction

    def initialize(x_axis = 0, y_axis = 0, direction = Direction::North)
      @x_axis = x_axis
      @y_axis = y_axis
      @direction = direction
    end
  end
end
