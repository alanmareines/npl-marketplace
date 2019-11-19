class AuctionJob < ApplicationJob
  queue_as :default

  def perform
    ###################
    # using AuctionJob.set(wait_until: @npl.auction_date).perform_later(@npl.id)
    # but is difficult to test!
    # Prefer method below
    ###################
    # puts "Running auctions in background..."
    # npl = Npl.find(npl_id)
    # npl.auctioned = true
    # npl.save
    # winner_bid = npl.bids.order(value: :desc).first
    # winner_bid.winner = true
    # winner_bid.save
    ###################

    npls_not_auctioned = Npl.where(auctioned: false)

    npls_not_auctioned.each do |npl|
      if npl.auction_date <= Date.today
        npl.auctioned = true
        npl.save
        winner_bid = npl.bids.order(value: :desc).first
        winner_bid.winner = true
        winner_bid.save
      end
    end
  end
end
