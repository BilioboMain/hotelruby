class BookingsAdminController < ApplicationController
  before_action :page_unauthorized
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
  
  def page_unauthorized
    if admin_signed_in?
      redirect_to login_redirect_path
    else
      redirect_to "/bookings/"
    end
  end

end
