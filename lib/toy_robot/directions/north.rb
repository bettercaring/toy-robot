module ToyRobot
  module Direction
    # This depicts North Direction Movement
    module North
      FRIENDLY_NAME = "NORTH".freeze
      X_MOVEMENT = 0
      Y_MOVEMENT = 1

      def self.left
        West
      end

      def self.right
        East
      end
    end
  end
end
