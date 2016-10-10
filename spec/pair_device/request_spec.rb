require "spec_helper"

describe PairDevice::Request do
  describe '.pass_key' do
    %i{display_only display_yes_no keyboard_display keyboard_only}.each do |capability|
      context "with #{capability} capability" do
        subject { PairDevice::Request.new device_capability: capability }

        it 'returns a pass key' do
          allow(PairDevice::PassKeyGenerator).to receive(:create).and_return '312123'
          expect(subject.pass_key).to eq('312123')
        end
      end
    end

    context "with no_input_no_output capability" do
      subject { PairDevice::Request.new device_capability: :no_input_no_output }

      it 'returns 000000' do
        expect(subject.pass_key).to eq('000000')
      end
    end
  end

  describe '.save' do
    let(:store) { PairDevice::Configuration.store }

    before do
      allow(PairDevice::PassKeyGenerator).to receive(:create).and_return '970742'
    end

    subject { PairDevice::Request.new device_capability: :display_only }

    it 'stores request in store' do
      subject.save
      expect(Marshal.load(store.get('970742')).pass_key).to eq(subject.pass_key)
    end

    it 'returns a PairDevice::Response' do
      expect(subject.save).to be_a(PairDevice::Response)
    end
  end
end
