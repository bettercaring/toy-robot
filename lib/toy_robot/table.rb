module ToyRobot
  # Table defines the size of the table on which the robot will be placed
  # Defaults to 5x5 size as per requirement
  class Table
    def initialize(width: 5, height: 5)
      @columns = 0...width
      @rows    = 0...height
    end
  end
end
