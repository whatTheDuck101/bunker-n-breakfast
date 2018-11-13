class BunkersController < ApplicationController
  before_action :find_bunker, only: [:show]

  def index
    @bunkers = Bunker.all
  end

  def show

  end

  def new
    @bunker = Bunker.new
  end

  def create
    @bunker = Bunker.new(bunker_params)
    if @bunker.save
      redirect_to bunkers_path
    else
      render :new
    end
  end

  private

  def find_bunker
    @bunker = Bunker.find(params[:id])
  end

  def bunker_params
    params.require(:bunker).permit(:name, :location, :description, :picture, :is_available, :price)
  end
end
