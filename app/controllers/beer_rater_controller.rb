class BeerRaterController < ApplicationController
  def home
  end

  def beers
    @beers = Beer.paginate(page: params[:page], per_page: 10)
  end

  def breweries
    @breweries = Brewery.all
  end

  def locations
    @locations = Location.all
  end
end
