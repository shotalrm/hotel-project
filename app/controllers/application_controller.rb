class ApplicationController < ActionController::Base
    before_action :set_q
    def set_q
        @q = Hotel.ransack(params[:q])
    end
end
