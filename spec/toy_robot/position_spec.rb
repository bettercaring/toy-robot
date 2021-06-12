require "spec_helper"

RSpec.describe ToyRobot::Position do
  subject { described_class.new }

  describe "#move_forward" do
    it "changes x_axis by direction's X_MOVEMENT" do
      stub_const "#{subject.direction}::X_MOVEMENT", 1
      new_position = subject.move_forward
      expect(new_position.x_axis).to eq(subject.x_axis + 1)
    end

    it "changes y_axis by direction's Y_MOVEMENT" do
      stub_const "#{subject.direction}::Y_MOVEMENT", 1
      new_position = subject.move_forward
      expect(new_position.y_axis).to eq(subject.y_axis + 1)
    end
  end

  describe "#left" do
    it "turns to the left of the position's direction" do
      expect(subject.direction).to receive(:left).and_return(ToyRobot::Direction)
      new_position = subject.left
      expect(new_position.direction).to eq(ToyRobot::Direction)
    end
  end

  describe "#right" do
    it "turns to the left of the position's direction" do
      expect(subject.direction).to receive(:right).and_return(ToyRobot::Direction)
      new_position = subject.right
      expect(new_position.direction).to eq(ToyRobot::Direction)
    end
  end

  describe "#to_s" do
    it "returns string of format 'x, y, D'" do
      expect(subject.to_s).to(
        match(/(\d+,\s){2}((NORTH)|(EAST)|(SOUTH)|(WEST))$/)
      )
    end
  end
end
