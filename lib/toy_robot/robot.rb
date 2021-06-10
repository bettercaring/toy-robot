require "toy_robot/position"
require "toy_robot/table"

module ToyRobot
  # The Robot
  class Robot
    attr_accessor :table
    attr_reader :position

    def initialize(position = 0, table = Table.new)
      @position = position
      @table = table
    end

    def move
      @position += 1
    end
  end
end
