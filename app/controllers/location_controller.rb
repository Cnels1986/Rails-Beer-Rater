class LocationController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location)
  end

  private

    def location
      params.require(:location).permit(:name)
    end
end
