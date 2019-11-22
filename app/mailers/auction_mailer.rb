class AuctionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.auction_mailer.auction_completed.subject
  #
  def auction_completed
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
