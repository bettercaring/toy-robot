require "spec_helper"
require_relative './shared/moves_correctly'

RSpec.describe ToyRobot::Robot do
  let(:x_axis) { 0 }
  let(:y_axis) { 0 }
  let(:table) { ToyRobot::Table.new(width: 5, length: 5) }
  let(:position) { ToyRobot::Position.new(x_axis: x_axis, y_axis: y_axis, direction: direction) }

  subject { described_class.new(position, table) }

  context "when facing east" do
    include_examples "moves_correctly", ToyRobot::Direction::East
  end

  context "when facing north" do
    include_examples "moves_correctly", ToyRobot::Direction::North
  end

  context "when facing south" do
    include_examples "moves_correctly", ToyRobot::Direction::South
  end

  context "when facing west" do
    include_examples "moves_correctly", ToyRobot::Direction::West
  end
end
