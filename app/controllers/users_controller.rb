class UsersController < ApplicationController
    def index
        @stocks = Worldtradingdata::Stock.get()
    end

    def show
        @user = current_user
        @user_invests = current_user.invests
    end
end
