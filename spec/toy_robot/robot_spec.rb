require "spec_helper"
require_relative './shared/moves_and_turns_correctly'
require_relative './shared/stays_inside'

RSpec.describe ToyRobot::Robot do
  let(:x_axis) { 2 }
  let(:y_axis) { 2 }
  let(:table) { ToyRobot::Table.new(width: 5, length: 5) }
  let(:position) { ToyRobot::Position.new(x_axis: x_axis, y_axis: y_axis, direction: direction) }

  subject { described_class.new(position, table) }

  context "when facing EAST" do
    include_examples "moves_and_turns_correctly", ToyRobot::Direction::East
    include_examples "stays_inside", ToyRobot::Direction::East
  end

  context "when facing NORTH" do
    include_examples "moves_and_turns_correctly", ToyRobot::Direction::North
    include_examples "stays_inside", ToyRobot::Direction::North
  end

  context "when facing SOUTH" do
    include_examples "moves_and_turns_correctly", ToyRobot::Direction::South
    include_examples "stays_inside", ToyRobot::Direction::South
  end

  context "when facing WEST" do
    include_examples "moves_and_turns_correctly", ToyRobot::Direction::West
    include_examples "stays_inside", ToyRobot::Direction::West
  end
end
