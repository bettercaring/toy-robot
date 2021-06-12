require "spec_helper"

RSpec.describe ToyRobot::Direction::South do
  describe "#self.left" do
    it "returns East" do
      expect(described_class.left).to be ToyRobot::Direction::East
    end
  end

  describe "#self.right" do
    it "returns West" do
      expect(described_class.right).to be ToyRobot::Direction::West
    end
  end
end
