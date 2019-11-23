class BidMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bid_mailer.bid_posted.subject
  #
  def bid_posted(bid)
    @bid = bid

    mail(
      to: @bid.user.email,
      subject: 'You posted a bid'
      )
  end

  def bid_received(bid)
    @bid = bid

    mail(
      to: @bid.npl.user.email,
      subject: 'You received a bid'
      )
  end
end
