class HotelsController < ApplicationController
    def index
        @hotels = Hotel.all
    end

    def new
        @hotel = Hotel.new
    end

    def create
        @hotel = Hotel.new(hotel_params)
        if @hotel.save
            redirect_to new_hotel_path
        end
    end

    def show
        @hotel = Hotel.find(params[:id])
        @reviews= @hotel.reviews.order(updated_at: :DESC).limit(3)
    end

    def hotel_params
        params.require(:hotel).permit(:name, :prefecture, :detail, :picture)
    end

    def search
        @results = @q.result
    end

end
