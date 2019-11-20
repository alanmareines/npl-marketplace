require 'test_helper'

class AuctionMailerTest < ActionMailer::TestCase
  test "auction_completed" do
    mail = AuctionMailer.auction_completed
    assert_equal "Auction completed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
