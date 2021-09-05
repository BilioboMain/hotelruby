class BookingsAdminController < ApplicationController
  def index
    @bookings = Booking.all()
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update({'confirmed': true})

    redirect_to "/bookings_admin/"
  end

  def hide
    @booking = Booking.find(params[:id])
    @booking.update({'confirmed': false})

    redirect_to "/bookings_admin/"
  end
  
end
