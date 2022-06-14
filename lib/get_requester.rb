# Write your code here
class GetRequester
    require 'net/http'
    require 'open-uri'
    require 'json'

    def initialize(url)
        @url = URI.parse(url)
    end

    def get_response_body
        @response = Net::HTTP.get_response(@url).body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end

end