module PairDevice
  class PassKeyGenerator
    def self.create
      sprintf('%06d', rand(0..999_999))
    end
  end
end
