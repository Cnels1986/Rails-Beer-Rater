class BeersController < ApplicationController
  def new
    @beer = Beer.new
  end

  def edit
  end

  def remove
  end

  def create
    # byebug
    brewery = Brewery.find_or_create_by(name: params[:beer][:brewery_name])
    location = Location.find_or_create_by(name: params[:beer][:location_name])
    user = current_user
    @beer = Beer.new(beer_params.merge(brewery_id: brewery.id, location_id: location.id, user_id: user.id))

    # respond_to do |format|
      if @beer.save
        flash[:info] = "Beer checked in."
        redirect_to beers_path
      else
        render 'new'
      end
  end

  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_params
      params.require(:beer).permit(:name, :beer_type, :rating)
    end
end
