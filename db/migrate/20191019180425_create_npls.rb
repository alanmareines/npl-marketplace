class CreateNpls < ActiveRecord::Migration[5.2]
  def change
    create_table :npls do |t|
      t.float :book_value
      t.string :debtor
      t.date :maturity_date
      t.text :collateral_description
      t.float :min_value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
