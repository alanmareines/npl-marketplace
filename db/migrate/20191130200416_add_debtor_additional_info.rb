class AddDebtorAdditionalInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :debtor_additional_info, :json
  end
end
