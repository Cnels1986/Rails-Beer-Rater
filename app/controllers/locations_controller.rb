class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
  end

  def show
    @location = Location.find(params[:id])
    @checkins = Checkin.where(location_id: @location.id)
  end

  private

    def location_params
      params.require(:location).permit(:name)
    end
end
