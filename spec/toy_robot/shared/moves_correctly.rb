RSpec.shared_examples "moves_correctly" do |parameter|
  let(:direction) { parameter }

  describe "#move" do
    it "moves #{parameter}" do
      subject.move

      expect(subject.position.to_h).to eq(
        { x_axis: x_axis + direction::X_MOVEMENT, y_axis: y_axis + direction::Y_MOVEMENT, direction: parameter }
      )
    end
  end

  describe "#left" do
    it "turns left to face #{parameter.left}" do
      subject.left
      expect(subject.position.to_h).to eq(
        { x_axis: x_axis, y_axis: y_axis, direction: direction.left }
      )
    end
  end

  describe "#right" do
    it "turns left to face #{parameter.right}" do
      subject.right
      expect(subject.position.to_h).to eq(
        { x_axis: x_axis, y_axis: y_axis, direction: direction.right }
      )
    end
  end
end
