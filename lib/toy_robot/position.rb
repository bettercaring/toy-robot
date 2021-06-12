require "toy_robot/direction"

module ToyRobot
  # The position of the Robot
  class Position
    attr_accessor :x_axis, :y_axis, :direction

    def initialize(x_axis: 0, y_axis: 0, direction: Direction::North)
      @x_axis = x_axis
      @y_axis = y_axis
      @direction = direction
    end

    def move_forward
      new_position x_axis: (x_axis + direction::X_MOVEMENT),
                   y_axis: (y_axis + direction::Y_MOVEMENT)
    end

    def left
      new_position direction: direction.left
    end

    def right
      new_position direction: direction.right
    end

    def to_h
      { direction: direction, x_axis: x_axis, y_axis: y_axis }
    end

    private

    def new_position(x_axis: @x_axis, y_axis: @y_axis, direction: @direction)
      Position.new x_axis: x_axis, y_axis: y_axis, direction: direction
    end
  end
end
