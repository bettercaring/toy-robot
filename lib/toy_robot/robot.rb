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
      go_to_position new_position
    end

    def move
      go_to_position position.move_forward
    end

    def left
      go_to_position position.left
    end

    def right
      go_to_position position.right
    end

    def report
      position
    end

    private

    def go_to_position(new_position)
      return unless table.valid_position? new_position

      @position = new_position
    end
  end
end
