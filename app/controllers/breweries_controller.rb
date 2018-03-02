class BreweriesController < ApplicationController
  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
  end

  private

    def brewery_params
      params.require(:brewery).permit(:name)
    end
end
