# Write your code here

require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
attr_reader :web_address

def initialize(web_address)
@web_address = web_address
end

def get_response_body
    uri = URI.parse(@web_address)
    response = Net::HTTP.get_response(uri)
    response.body
end

def parse_json
    JSON.parse(get_response_body)
end

end