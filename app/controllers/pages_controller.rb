class PagesController < ApplicationController
  def home
    @npls_sold = Npl.where(auctioned: true).size
    @npls_sold_sum = Npl.where(auctioned: true).sum(:book_value)
    @npls_available = Npl.where(auctioned: false).size
    @users_registered = User.count
  end

  def cockpit
    @user = current_user
    @bids = @user.bids
    @npls = Npl.where(user_id: @user)
  end
end
