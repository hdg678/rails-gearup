class BookingsController < ApplicationController

  # before_action: :find_equipment

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    if Booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:description, :equipment_id)
  end

  # def find_equipment
  #   @equipment = Equipment.find(params[:equipment_id]
  # end

end

