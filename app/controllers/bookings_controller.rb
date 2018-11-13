class BookingsController < ApplicationController
# missing pundit and validations
  before_action :find_bunker, only: [:create]

  def index
    @bookings = Booking.all
  end

  # def new

  # end

  def create
    @current_user = User.first
    @booking = Booking.new
    @booking.user = current_user
    @booking.bunker = @bunker
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update

  end

  private

  def find_bunker
    @bunker = Bunker.find(params[:bunker_id])
  end

  # def booking_params
  #   params.require(:booking).permit(:status, :user_id, :bunker_id)
  # end
end
