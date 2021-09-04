class BookingsController < ApplicationController
  def index
    
  end

  def create
    @booking = Booking.new(params.require(:booking).permit(:name,:email, :date_in, :date_out, :room))
    @booking.save

    redirect_to '/bookings/booked'
  end

  def new 

  end
end
