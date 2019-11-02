class AddAuctionDateToNpls < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :auction_date, :date
  end
end
