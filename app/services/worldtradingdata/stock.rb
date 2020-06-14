module Worldtradingdata
    class Stock < Base
        attr_accessor :symbol,
                      :name,
                      :currency,
                      :price,
                      :stock_exchange_long,
                      :stock_exchange_short

        def self.get(query = {})
            response = Request.get(query = {})
            stocks = response.fetch('data', []).map { |stock| Stock.new(stock) }
            [ stocks, response[:errors] ]
        end
  
        def self.find(name)
            response = Request.get("search_term=#{name}")
            Stock.new(response)
        end
  
        def initialize(args = {})
            super(args)
        end
    end
end