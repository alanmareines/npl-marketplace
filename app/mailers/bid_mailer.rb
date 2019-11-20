class BidMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bid_mailer.bid_posted.subject
  #
  def bid_posted
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
