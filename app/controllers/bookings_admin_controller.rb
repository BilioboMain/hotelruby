# frozen_string_literal: true

require 'csv'
class BookingsAdminController < ApplicationController
  before_action :page_unauthorized
  def index
    @bookings = Booking.all.order('created_at DESC')
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update({ 'confirmed': true })

    redirect_to '/bookings_admin/'
  end

  def hide
    @booking = Booking.find(params[:id])
    @booking.update({ 'confirmed': false })

    redirect_to '/bookings_admin/'
  end

  def page_unauthorized
    redirect_to '/bookings/' unless admin_signed_in?
  end

  @bookings = Booking.all # ";0" stops output.  Change "User" to any model.

  respond_to do |format|
    format.html
    format.csv { render text: @bookings.to_csv }
  end
end
