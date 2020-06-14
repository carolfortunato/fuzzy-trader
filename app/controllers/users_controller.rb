class UsersController < ApplicationController
    def index
        @stocks = Worldtradingdata::Stock.get()
    end
end
