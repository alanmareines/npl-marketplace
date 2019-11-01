class NplsController < ApplicationController
  before_action :find_npl, only: %i[edit show]

  def index
    @npls = Npl.all
  end

  def new
    @npl = Npl.new
  end

  def create
    @user = current_user
    @npl = Npl.new(npl_params)
    @npl.user = @user
    if @npl.save
      redirect_to npl_path(@npl)
    else
      render :new
    end
  end

  def show
    @current_user_bids = @npl.bids.where(user: current_user)
    @bid = Bid.new
  end

  def npls_user
    @user = current_user
    npls = Npl.all
    @npls = npls.where(user: @user)
  end

  def run_auction
    @npl = Npl.find(params[:npl_id])
    @npl.update(auctioned: true)

    @winner_bid = @npl.bids.order(value: :desc).first
    @winner_bid.update(winner: true)
    redirect_to npl_path(@npl)
    # @bids = @npl
    # ActiveRecord
    #   @npl.auctioned = true
    #   @npl.save
  end

  private

  def find_npl
    @npl = Npl.find(params[:id])
  end

  def npl_params
    params.require(:npl).permit(:name, :book_value, :min_value,
                                :collateral_description, :debtor,
                                :maturity_date, :npl_type, :user_id,
                                :document)
  end
end
