class BunkersController < ApplicationController
  before_action :find_bunker, only: [:show]

  def index
    @bunkers = policy_scope(Bunker)
  end

  def show
  end

  def new
    @bunker = Bunker.new
    authorize(@bunker)
  end

  def create
    @bunker = Bunker.new(bunker_params)
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
    params.require(:bunker).permit(:name, :location, :description, :picture, :is_available, :price)
  end
end
