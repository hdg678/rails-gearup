class BookingsController < ApplicationController
  def index
    @bookings = @equipment.all
  end

  def show
  end

  def new
    @equipment = Booking.new
  end

  def create
    @booking = @equipment.create(booking_params)
    if @equipment.save
      redirect_to booking_index_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

end
