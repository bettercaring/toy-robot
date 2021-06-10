module ToyRobot
  module Direction
    # This depicts East Direction Movement
    module East
      X_MOVEMENT = 1
      Y_MOVEMENT = 0

      def self.left
        North
      end

      def self.right
        South
      end
    end
  end
end
