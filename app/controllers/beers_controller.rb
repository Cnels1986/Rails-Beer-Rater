class BeersController < ApplicationController
  def new
    @beer = Beer.new
  end

  def edit
  end

  def remove
  end

  def create
    @beer = Beer.new(beer_params)

    respond_to do |format|
      if @beer.save
        format.html { redirect_to @beer, notice: 'Beer was successfully created.' }
        # format.json { render :show, status: :created, location: @beer }
      else
        format.html { render :new }
        # format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
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
      params.require(:beer).permit(:user_id, :name, :brewery_id, :location_id, :beer_type, :rating)
    end
end
