$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "fakeredis/rspec"
require "pair_device"

PairDevice.configure do |config|
  config.store Redis.new(url: "redis://localhost")
  config.expires_ttl 20
end
