require 'httparty'
require 'pincode/response'

module Pincode

  include HTTParty
  format :json

  class << self

    def search(query)
      Response.new get(url + query.to_s)
    end

    def url
      "http://pin-codes.in/api/pincode/"
    end
  end

  class InvalidPincodeError < StandardError;  end
end

