require "spec_helper"

RSpec.describe ToyRobot::Direction::East do
  describe "#self.left" do
    it "returns North" do
      expect(described_class.left).to be ToyRobot::Direction::North
    end
  end

  describe "#self.right" do
    it "returns South" do
      expect(described_class.right).to be ToyRobot::Direction::South
    end
  end
end
