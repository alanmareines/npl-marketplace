class PagesController < ApplicationController
  def home
  end

  def cockpit
    @user = current_user
    @bids = @user.bids
    @npls = Npl.where(user_id: @user)
  end
end
