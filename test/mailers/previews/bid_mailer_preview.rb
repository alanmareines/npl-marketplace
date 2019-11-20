# Preview all emails at http://localhost:3000/rails/mailers/bid_mailer
class BidMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/bid_mailer/bid_posted
  def bid_posted
    BidMailer.bid_posted
  end

end
