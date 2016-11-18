class BookingsController < ApplicationController

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.equipment = @equipment
    if @booking.save
      redirect_to dashboard_path
    else
      raise
      redirect_to equipment_path(@equipment), notice: "Error, booking not validated"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      @booking.save
      redirect_to dashboard_path, notice: 'Your booking has been updated'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:pickup, :dropoff)
  end
end

