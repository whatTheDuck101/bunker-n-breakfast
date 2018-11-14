class BunkersController < ApplicationController
  before_action :find_bunker, only: [:show]

  def index
    @bunkers = policy_scope(Bunker)
    @bunkers_location = Bunker.where.not(latitude: nil, longitude: nil)
    @markers = @bunkers_location.map do |bunker|
      {
        lng: bunker.longitude,
        lat: bunker.latitude, 
        infoWindow: { content: render_to_string(partial: "/bunkers/map_window", locals: { bunker: bunker })}
      }
    end
  end

  def show
  end

  def my_bunkers
    @bunkers = current_user.bunkers
    @bookings = current_user.bookings
    authorize(@bunkers)
  end

  def new
    @bunker = Bunker.new
    authorize(@bunker)
  end

  def create
    @bunker = Bunker.new(bunker_params)
    @bunker.user = current_user
    authorize(@bunker)

    if @bunker.save!
      redirect_to bunkers_path
    else
      render :new
    end
  end

  private

  def find_bunker
    @bunker = Bunker.find(params[:id])
    authorize(@bunker)
  end

  def bunker_params
    params.require(:bunker).permit(:name, :address, :description, :photo, :is_available, :price)
  end
end
