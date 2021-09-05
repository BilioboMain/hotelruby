class RoomsController < ApplicationController
  def index
    @rooms_admins = RoomsAdmin.all
  end
  def show
    @room = RoomsAdmin.find(params[:id])
  end
end
