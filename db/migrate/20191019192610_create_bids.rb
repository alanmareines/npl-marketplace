class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.float :value
      t.boolean :winner, default: false
      t.references :user, foreign_key: true
      t.references :npl, foreign_key: true

      t.timestamps
    end
  end
end
