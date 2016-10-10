require "spec_helper"

describe PairDevice::PassKeyGenerator do
  describe '#create' do
    it 'returns 6 numeric digits key' do
      expect(described_class.create.size).to eq(6)
    end

    it 'returns a diferent key in each run' do
      expect(described_class.create).not_to eq(described_class.create)
      expect(described_class.create).not_to eq(described_class.create)
      expect(described_class.create).not_to eq(described_class.create)
      expect(described_class.create).not_to eq(described_class.create)
      expect(described_class.create).not_to eq(described_class.create)
    end
  end
end
