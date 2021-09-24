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

  @bookings = Booking.all() # ";0" stops output.  Change "User" to any model.

  respond_to do |format|
    format.html
    format.csv{render text: @bookings.to_csv }
    format.xls {render text: @bookings.to_csv(col_sep:"\t")}
  end
end
