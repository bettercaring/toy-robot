module ToyRobot
  module Direction
    # This depicts South Direction Movement
    module South
      X_MOVEMENT = 0
      Y_MOVEMENT = -1

      def self.left
        East
      end

      def self.right
        West
      end
    end
  end
end
