# frozen_string_literal: true

class BookingsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def create
    @booking = Booking.new(params.require(:booking).permit(:name, :email, :date_in, :date_out,
                                                           :room_name))
    @booking.update({ 'confirmed': false })
    @booking.save

    redirect_to '/bookings/booked'
  end

  def new
    @rooms = Room.all
  end
end
