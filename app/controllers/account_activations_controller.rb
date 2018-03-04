class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
      user.activate
      log_in user
    end
  end
end
