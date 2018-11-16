class BunkersController < ApplicationController
  before_action :find_bunker, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bunkers = policy_scope(Bunker)

    if params[:query_address].present?
      @bunkers = Bunker.near(params[:query_address], 200)
    end

    if params[:min_price].present?
      @bunkers = @bunkers.in_price_min(params[:min_price])
    end

    if params[:max_price].present?
      @bunkers = @bunkers.in_price_max(params[:max_price])
    end

    @bunkers_location = @bunkers.where.not(latitude: nil, longitude: nil)
    display_in_map
  end

  def show
    @bunkers_location = []
    @bunkers_location << @bunker
    display_in_map
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

    if @bunker.save
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

  def display_in_map
    @markers = @bunkers_location.map do |bunker|
      {
        lng: bunker.longitude,
        lat: bunker.latitude,
        infoWindow: { content: render_to_string(partial: "/bunkers/map_window", locals: { bunker: bunker })}
      }
    end
  end
end
