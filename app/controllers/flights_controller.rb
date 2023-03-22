class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @date_options = @flights.map{ |f| [ f.start.strftime("%m/%d/%Y"), f.start ] }.uniq
    @airports = Airport.all.map { |a| [a.code, a.id]}
    @available_flights = Flight.where(depart_id: params[:depart_id], start: params[:start],
      arrival_id: params[:arrival_id])
  end

  def show
  end

  def new
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(flight_params)
    if @airport.save
        redirect_to flight_url(@flight), notice: "Flight was successfully created."
    else
        render :new, status: :unprocessable_entity
    end
  end
end
