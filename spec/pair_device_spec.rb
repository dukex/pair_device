require "spec_helper"

describe PairDevice do
  it "has a version number" do
    expect(PairDevice::VERSION).not_to be nil
  end

  it "configures store" do
    PairDevice.configure do |config|
      config.store Redis.new
    end

    expect(PairDevice::Configuration.store).to be_a(Redis)
  end
end
