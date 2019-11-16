namespace :auction do
  desc "Run all available auctions in background..."
  task run: :environment do
  AuctionJob.perform_later
  end
end
