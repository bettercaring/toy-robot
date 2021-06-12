RSpec.shared_examples "moves_and_turns_correctly" do |parameter|
  let(:direction) { parameter }

  describe "#move" do
    it "moves #{parameter::FRIENDLY_NAME}" do
      subject.move

      expect(subject.report).to eq(
        "#{x_axis + direction::X_MOVEMENT}, #{y_axis + direction::Y_MOVEMENT}, #{direction::FRIENDLY_NAME}"
      )
    end
  end

  describe "#left" do
    it "turns left to face #{parameter.left::FRIENDLY_NAME}" do
      subject.left
      expect(subject.report).to eq(
        "#{x_axis}, #{y_axis}, #{direction.left::FRIENDLY_NAME}"
      )
    end
  end

  describe "#right" do
    it "turns left to face #{parameter.right::FRIENDLY_NAME}" do
      subject.right
      expect(subject.report).to eq(
        "#{x_axis}, #{y_axis}, #{direction.right::FRIENDLY_NAME}"
      )
    end
  end
end
