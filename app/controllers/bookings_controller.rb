class BookingsController < ApplicationController

#missing pundit and validations
  def index
    @bookings = Booking.all
  end

  # def new

  # end

  def create
    @booking = Booking.new
    # @bunker_id = @bunker.id
    # @user_bunker_id = @bunker.user.id
    @booking.bunker = @bunker
    @booking.user = current_user
    if @booking.save
      redirect_to bunker_path(@bunker)
    else
      render :new
    end
  end

  def update
  # changes states
  # @booking = Booking.find(params[:id])

  end

  private

  def find_bunker
    @bunker = Bunker.find(params[:bunker_id])
  end

  # def booking_params
  #   params.require(:booking).permit(:status, :user_id, :bunker_id)
  # end
end
