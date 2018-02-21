class BeerRaterController < ApplicationController
  def home
  end

  def beers
    @beers = Beer.all
  end

  def breweries
    @breweries = Brewery.all
  end

  def locations
    @locations = Location.all
  end
end
