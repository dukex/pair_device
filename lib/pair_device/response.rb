module PairDevice
  class Response
    # Creates a new pairing.
    def initialize(request)
      @request = request
    end


    def as_json(_ = {})
      {
        pass_key: request.pass_key,
        expires_at: request.expires_at
      }
    end

    private

    def request
      @request
    end
  end
end
