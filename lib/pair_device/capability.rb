require "pair_device/capabilities/generic"
require "pair_device/capabilities/display_only"
require "pair_device/capabilities/display_yes_no"
require "pair_device/capabilities/keyboard_display"
require "pair_device/capabilities/keyboard_only"
require "pair_device/capabilities/no_input_no_output"

module PairDevice
  class Capability
    CAPABILITIES = {
      display_only: Capabilities::DisplayOnly,
      display_yes_no: Capabilities::DisplayYesNo,
      keyboard_display: Capabilities::KeyboardDisplay,
      keyboard_only: Capabilities::KeyboardOnly,
      no_input_no_output: Capabilities::NoInputNoOutput
    }

    def self.get(type)
      CAPABILITIES[type].new
    end
  end
end
