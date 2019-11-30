class NplsController < ApplicationController
  before_action :find_npl, only: %i[edit show]
  before_action :log_in, except: %i[index]
  before_action :lawyer?, except: %i[index]

  def index
    @npls = Npl.all.order(auction_date: :asc)
    @search = params['search']
    if @search.present?
      @name = @search['npl_name']
      @npls = Npl.where('name ILIKE ?', "%#{@name}%")
    end
  end

  def new
    @npl = Npl.new
  end

  def create
    @user = current_user
    @npl = Npl.new(npl_params)
    @npl.user = @user
    if @npl.save
      # AuctionJob.set(wait_until: @npl.auction_date).perform_later(@npl.id)
      ###########
      NplMailer.npl_created(@npl).deliver_now
      ###########
      if @npl.due_diligence
        redirect_to new_npl_due_diligence_path(@npl)
      else
        redirect_to npl_path(@npl)
      end
    else
      render :new
    end
  end

  def show
    @current_user_bids = @npl.bids.where(user: current_user)
    @bid = Bid.new
    @dd = DueDiligence.where(npl: @npl).first
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
    ###########
    AuctionMailer.auction_npl_seller(@winner_bid).deliver_later
    AuctionMailer.auction_npl_winner(@winner_bid).deliver_later
    ###########
    redirect_to npl_path(@npl)
    # @bids = @npl
    # ActiveRecord
    #   @npl.auctioned = true
    #   @npl.save
  end

  def self.user_npl
    Npl.all.where(user: current_user)
    .pluck("npls.user.name, sum(npls)")
  end

  private

  def log_in
    unless current_user
      redirect_to page_error_path
    end
  end

  def lawyer?
    if current_user.lawyer
      redirect_to page_error_path
    end
  end

  def find_npl
    @npl = Npl.find(params[:id])
  end

  def npl_params
    params.require(:npl).permit(:name, :book_value, :min_value,
                                :collateral_description, :debtor,
                                :maturity_date, :npl_type, :user_id,
                                :auction_date, :document, :due_diligence)
  end
end
