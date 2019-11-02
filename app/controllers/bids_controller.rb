 class BidsController < ApplicationController

  def index
    @npl = Npl.find(params[:npl_id])
    @bids = @npl.bids
  end

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @npl = Npl.find(params[:npl_id])
    @bid = Bid.new
  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def create
    @bid = Bid.new(bid_params)
    @npl = Npl.find(params[:npl_id])
    @bid.npl = @npl
    @bid.user = current_user
    if current_user == @npl.user
      redirect_to npl_path(@npl), alert: "You can't bid for your own NPL!"
    elsif @bid.save
      redirect_to npl_path(@npl), notice: "Thanks for bidding!"
    else
      formated_number = view_context.number_to_currency(@npl.min_value, unit:"R$", separator: ",", delimiter: ".")
      redirect_to npl_path(@npl), alert: "Your bid should be greater then #{formated_number}"
    end
  end

  def update
    if @bid.update(bid_params)
      redirect_to npl_path(@npl)
    else
      render 'edit'
    end
  end

  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy

    redirect_to bids_path
  end


  private

  def bid_params
    params.require(:bid).permit(:value)
  end
end
