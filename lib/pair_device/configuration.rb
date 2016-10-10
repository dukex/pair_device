module PairDevice
  class Configuration < Hash
    def self.instance
      @instance ||= new
    end

    def self.store
      instance[:store]
    end

    def self.expires_ttl
      instance[:ttl]
    end

    def redis(redis_config)
      self[:redis] = redis_config
    end

    def expires_ttl(ttl)
      self[:ttl] = ttl
    end

    def store(store)
      self[:store] = store
    end
  end
end
