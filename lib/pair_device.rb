require "pair_device/version"
require "pair_device/request"
require "pair_device/response"
require "pair_device/capability"
require "pair_device/pass_key_generator"
require "pair_device/configuration"

module PairDevice
  def self.configure
    yield Configuration.instance
  end
end
