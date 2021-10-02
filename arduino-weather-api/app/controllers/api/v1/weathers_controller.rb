class Api::V1::WeathersController < ApplicationController

    def index
        @weathers = Weather.all
        render json: @weathers
    end
    
    # TO DO ADD RANGE OF TIME TO SHOW WEATHER

    private

    def weather_params
        params.require(:weather).permit(:humidity, :temperature, :index)
    end
end
