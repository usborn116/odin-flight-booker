class AirportsController < ApplicationController
    def show
    end
       
    def new
      @airport = Airport.new
    end
    def create
      @airport = Airports.new(airport_params)
      if @airport.save
        redirect_to airport_url(@airport), notice: "Airport was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def airport_params
      params.require(:airport).permit(:code)
    end
end
