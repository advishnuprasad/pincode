module Pincode
  class Response

    def initialize(response)      
      @response = response
      handle_response(@response)
    end

    def handle_response(response) 
      if response["status"] == "ERROR"
        raise Pincode::InvalidPincodeError, response["message"]
      else
        response
      end
    end

    def status
      @response["status"]
    end

    def post_office
      @response["PostOffice"]
    end

    def district
      @response["District"]
    end

    def state
      @response["State"]
    end
  end
end