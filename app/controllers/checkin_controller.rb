class CheckinController < ApplicationController
  def new
    @checkin = Checkin.new
  end

  def create
    beer = Beer.find_or_create_by(name: params[:checkin][:beer_id].downcase)
    user = current_user

    if params[:checkin][:location_id] == ''
      location = Location.find_or_create_by(name: 'other')
    else
      location = Location.find_or_create_by(name: params[:checkin][:location_id].downcase)
    end

    @checkin = Checkin.new(checkin_params.merge(beer_id: beer.id, user_id: user.id, location_id: location.id))

      if @checkin.save
        flash[:info] = "Beer checked in."
        redirect_to viewcheckin_path
      else
        render 'new'
      end
  end

  def index
     @checkin = Checkin.paginate(page: params[:page], per_page: 15)
  end

  private
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    def checkin_params
      params.require(:checkin).permit(:rating, :picture)
    end
end
