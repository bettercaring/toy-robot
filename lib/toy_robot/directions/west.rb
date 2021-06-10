module ToyRobot
  module Direction
    # This depicts West Direction Movement
    module West
      X_MOVEMENT = -1
      Y_MOVEMENT = 0

      def self.left
        South
      end

      def self.right
        North
      end
    end
  end
end
