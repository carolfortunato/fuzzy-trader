require 'faraday'
require 'json'

class Worldtradingdata::Connection
	BASE = "https://api.worldtradingdata.com/api/v1/stock_search"
	TOKEN = 'AGKH9AjprzGYTzfx8TD6l8kQbpZNEEztrIBfvoRfuzCqu9beczRbSjHlUF8e'
	def self.api
    	Faraday.new(
            url: BASE,
            params: {api_token: TOKEN},
	        headers: {'Content-Type' => 'application/json'}
    	)
	end
end

# url exemplo 'https://api.worldtradingdata.com/api/v1/stock_search?search_term=vanke&api_token=AGKH9AjprzGYTzfx8TD6l8kQbpZNEEztrIBfvoRfuzCqu9beczRbSjHlUF8e'
