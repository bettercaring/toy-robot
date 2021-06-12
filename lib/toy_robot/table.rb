module ToyRobot
  # Table defines the size of the table on which the robot will be placed
  # Defaults to 5x5 size as per requirement
  class Table
    attr_reader :width, :length

    def initialize(width: 5, length: 5)
      @width = width
      @length = length
    end

    def valid_position?(position)
      (0...width).cover?(position.x_axis) &&
        (0...length).cover?(position.y_axis)
    end
  end
end
