class PrefecturesController < ApplicationController

    def index
        @prefectures = Prefecture.all
    end

    def new
        @prefecture = Prefecture.new
    end

    def create
        @prefecture = Prefecture.new(prefecture_params)
        if @prefecture.save
        end
    end

    def show
        @prefecture = Prefecture.find(params[:id])
        @hotels = @prefecture.hotels
    end

    def prefecture_params
        params.require(:prefecture).permit(:place)
    end


end
