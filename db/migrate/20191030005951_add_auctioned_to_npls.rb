class AddAuctionedToNpls < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :auctioned, :boolean, default: false
  end
end
