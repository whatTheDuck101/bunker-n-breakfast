class BookingsController < ApplicationController
# missing pundit and validations
  before_action :find_bunker, only: [:create]

  def index
    @bookings = policy_scope(Booking)
  end

  # def new

  # end

  def create
    @booking = Booking.new
    @booking.bunker = @bunker
    @booking.user = current_user
    authorize(@booking)

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
    authorize(@bunker)
  end

  # def booking_params
  #   params.require(:booking).permit(:status, :user_id, :bunker_id)
  # end
end
