module PairDevice
  module Capabilities
    class NoInputNoOutput
      include Generic

      def generate_pass_key
        '000000'
      end
    end
  end
end
