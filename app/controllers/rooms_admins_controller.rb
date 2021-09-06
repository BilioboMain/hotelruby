class RoomsAdminsController < ApplicationController
  before_action :set_rooms_admin, only: %i[ show edit update destroy ]

  # GET /rooms_admins or /rooms_admins.json
  def index
    @rooms_admins = RoomsAdmin.all
  end

  # GET /rooms_admins/1 or /rooms_admins/1.json
  def show
  end

  # GET /rooms_admins/new
  def new
    @rooms_admin = RoomsAdmin.new
  end

  # GET /rooms_admins/1/edit
  def edit
  end

  # POST /rooms_admins or /rooms_admins.json
  def create
    @rooms_admin = RoomsAdmin.new(rooms_admin_params)

    respond_to do |format|
      if @rooms_admin.save
        format.html { redirect_to @rooms_admin, notice: "Rooms admin was successfully created." }
        format.json { render :show, status: :created, location: @rooms_admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rooms_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms_admins/1 or /rooms_admins/1.json
  def update
    respond_to do |format|
      if @rooms_admin.update(rooms_admin_params)
        format.html { redirect_to @rooms_admin, notice: "Rooms admin was successfully updated." }
        format.json { render :show, status: :ok, location: @rooms_admin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rooms_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms_admins/1 or /rooms_admins/1.json
  def destroy
    @rooms_admin.destroy
    respond_to do |format|
      format.html { redirect_to rooms_admins_url, notice: "Rooms admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rooms_admin
      @rooms_admin = RoomsAdmin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rooms_admin_params
      params.require(:rooms_admin).permit(:name, :body, :price)
    end
end
