class BeersController < ApplicationController
  def new
    @beer = Beer.new
  end

  def create
    brewery = Brewery.find_or_create_by(name: params[:beer][:brewery_name].downcase)

    @beer = Beer.new(beer_params.merge(brewery_id: brewery.id))

      if @beer.save
        flash[:info] = "Beer Added in."
        redirect_to beers_path
      else
        render 'new'
      end
  end

  def show
    @beer = Beer.find(params[:id])
    @checkins = Checkin.where(beer_id: @beer.id)
  end

  def index
    @beers = Beer.paginate(page: params[:page], per_page: 10)
  end

  private
    def set_beer
      @beer = Beer.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :beer_type)
    end
end
