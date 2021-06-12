require "toy_robot/position"
require "toy_robot/table"

module ToyRobot
  # The Robot
  class Robot
    attr_accessor :table
    attr_reader :position

    def initialize(position = Position.new, table = Table.new)
      @position = position
      @table = table
    end

    def place(new_position)
      @position = new_position
    end

    def move
      @position = position.move_forward
    end

    def left
      @position = position.left
    end

    def right
      @position = position.right
    end

    def report
      position
    end
  end
end
