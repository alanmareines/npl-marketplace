# Preview all emails at http://localhost:3000/rails/mailers/auction_mailer
class AuctionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/auction_mailer/auction_completed
  def auction_completed
    AuctionMailer.auction_completed
  end

end
