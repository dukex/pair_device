module PairDevice
  # Creates and handles the request pairing
  class Request
    attr_reader :pass_key, :expires_at

    # Creates a new pairing.
    def initialize(device_capability: nil)
      @capability = Capability.get(device_capability)
      @pass_key = @capability.generate_pass_key
      @expires_at ||=  Time.now.utc + configured_expires_ttl
    end

    def save
      store.set(@pass_key, Marshal.dump(self))
      store.expireat(@pass_key, expires_at.to_i)
      PairDevice::Response.new self
    end

    private

    def store
      PairDevice::Configuration.store
    end

    def configured_expires_ttl
      PairDevice::Configuration.expires_ttl
    end
  end
end
