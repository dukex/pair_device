require "spec_helper"

describe PairDevice::Capability do
  describe "#get" do
    it 'returns the correct capability class' do
      expect(described_class.get(:display_only)).to be_a(PairDevice::Capabilities::DisplayOnly)
      expect(described_class.get(:display_yes_no)).to be_a(PairDevice::Capabilities::DisplayYesNo)
      expect(described_class.get(:keyboard_only)).to be_a(PairDevice::Capabilities::KeyboardOnly)
      expect(described_class.get(:no_input_no_output)).to be_a(PairDevice::Capabilities::NoInputNoOutput)
      expect(described_class.get(:keyboard_display)).to be_a(PairDevice::Capabilities::KeyboardDisplay)
    end
  end
end
