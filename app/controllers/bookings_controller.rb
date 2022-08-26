class BookingsController < ApplicationController
  def new
    @booking = Booking.new(date: params[:date], flight_id: params[:flight_id])
    @passenger_num = params[:passenger_num]
    @passenger = @booking.passengers.build
    @flight = Flight.where(id: params[:flight_id])
    @available_flights = Flight.where(id: params[:flight_id])
  end

  def show
    @booking = Booking.find_by(id: params[:id])
  end


  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      PassengerMailer.with(booking_id: @booking.id).welcome_email.deliver_now
      flash[:notice] = 'Booking successfully completed!'
      redirect_to booking_path(@booking)
    else
      flash[:alert] = 'An error occured!'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :date, passengers_attributes: [:name, :email])
  end
end
