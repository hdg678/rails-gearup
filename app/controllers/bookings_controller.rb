class BookingsController < ApplicationController

  def new

  end

  def create
    @booking = @equipment.create(booking_params)
    if @equipment.save
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

end

