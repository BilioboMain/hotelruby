class GeneratorController < ApplicationController
  def index

  end
  @bookings = Booking.all() # ";0" stops output.  Change "User" to any model.

  respond_to do |format|
    format.html
    format.csv{render text: @bookings.to_csv }
    format.xls {render text: @bookings.to_csv(col_sep:"\t")}
  end
end
