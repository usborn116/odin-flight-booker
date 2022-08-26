class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @booking = Booking.find(params[:booking_id])
    @url  = 'http://example.com/login'
    mail(to: @booking.passengers.pluck(:email), subject: 'Flight booked!')
  end
end
