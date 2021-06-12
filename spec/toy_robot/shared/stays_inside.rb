# rubocop:disable Style/NestedTernaryOperator
# rubocop:disable Metrics/BlockLength
RSpec.shared_examples "stays_inside" do |parameter|
  let(:direction) { parameter }

  context "placed at left edge of table facing #{parameter}" do
    let(:x_axis) { parameter::X_MOVEMENT.zero? ? 0 : (parameter::X_MOVEMENT.positive? ? table.width : 0) }
    let(:y_axis) { parameter::Y_MOVEMENT.zero? ? 0 : (parameter::Y_MOVEMENT.positive? ? table.width : 0) }

    describe "#move" do
      it "does not moves #{parameter}" do
        subject.move

        expect(subject.position.to_h).to eq(
          { x_axis: x_axis, y_axis: y_axis, direction: parameter }
        )
      end
    end
  end

  context "placed at center edge of table facing #{parameter}" do
    let(:x_axis) { parameter::X_MOVEMENT.zero? ? table.width/2 : (parameter::X_MOVEMENT.positive? ? table.width : 0) }
    let(:y_axis) { parameter::Y_MOVEMENT.zero? ? table.width/2 : (parameter::Y_MOVEMENT.positive? ? table.width : 0) }

    describe "#move" do
      it "does not moves #{parameter}" do
        subject.move

        expect(subject.position.to_h).to eq(
          { x_axis: x_axis, y_axis: y_axis, direction: parameter }
        )
      end
    end
  end

  context "placed at right edge of table facing #{parameter}" do
    let(:x_axis) { parameter::X_MOVEMENT.zero? ? table.width : (parameter::X_MOVEMENT.positive? ? table.width : 0) }
    let(:y_axis) { parameter::Y_MOVEMENT.zero? ? table.width : (parameter::Y_MOVEMENT.positive? ? table.width : 0) }

    describe "#move" do
      it "does not moves #{parameter}" do
        subject.move

        expect(subject.position.to_h).to eq(
          { x_axis: x_axis, y_axis: y_axis, direction: parameter }
        )
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
# rubocop:enable Style/NestedTernaryOperator
