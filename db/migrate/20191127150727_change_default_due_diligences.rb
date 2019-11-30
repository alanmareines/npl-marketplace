class ChangeDefaultDueDiligences < ActiveRecord::Migration[5.2]
  def change
    change_column :due_diligences, :contract_document, :string, default: nil
    change_column :due_diligences, :collateral_document, :string, default: nil
    change_column :due_diligences, :other_document, :string, default: nil
  end
end
