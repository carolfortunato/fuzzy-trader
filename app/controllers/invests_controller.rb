class InvestsController < ApplicationController
    before_action :authenticate_user!

    def index
        @invests = current_user.invests
    end

    def show
        @invest = current_user.invests.find(id)
    end

    def new
        @invest = current_user.invests.build
    end

    def create
        @invest = current_user.invests.new(invest_params)
        if @invest.save
            redirect_to user_path(current_user)
        else
            render root_path
        end
    end

    private

    def invest_params
        params.require(:invest).permit(:name, :symbol, :price)
    end
end
