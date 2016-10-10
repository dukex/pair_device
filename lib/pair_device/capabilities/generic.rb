module PairDevice
  module Capabilities
    module Generic
      def generate_pass_key
        PassKeyGenerator.create
      end
    end
  end
end
