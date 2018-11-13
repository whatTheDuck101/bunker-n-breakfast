class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bunker = Bunker.find(params[:bunker_id])
    @booking.user = User.find(params[:user_id])
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update

  end

  private

  def booking_params
    params.require(:booking).permit(:status, :user_id, :bunker_id)
  end
end
