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
    @npls = @user_npls_book_value
    @bids_winner_sum = 0
    user_bids_npls = Npl.where(user: current_user, auctioned: true)
    user_bids_npls.each do |npl|
      @bids_winner_sum += npl.bids.order(value: :desc).first.value
    end

  end

  def errorpage
  end


end
