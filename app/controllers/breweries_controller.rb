class BreweriesController < ApplicationController
  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
  end

  def show
      @brewery = Brewery.find(params[:id])
      @beers = Beer.where(brewery_id: @brewery.id)
  end

  private

    def brewery_params
      params.require(:brewery).permit(:name)
    end
end
