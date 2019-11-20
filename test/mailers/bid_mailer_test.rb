require 'test_helper'

class BidMailerTest < ActionMailer::TestCase
  test "bid_posted" do
    mail = BidMailer.bid_posted
    assert_equal "Bid posted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
