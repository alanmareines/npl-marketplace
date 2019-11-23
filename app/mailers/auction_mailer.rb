class AuctionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.auction_mailer.auction_completed.subject
  #
  def auction_npl_winner(winner_bid)
    @winner_bid = winner_bid

    mail(
      to: @winner_bid.user.email,
      subject: 'You won an auction'
      )
  end

  def auction_npl_seller(winner_bid)
    @winner_bid = winner_bid

    mail(
      to: @winner_bid.npl.user.email,
      subject: 'Your NPL auction was succesful'
      )
  end
end
