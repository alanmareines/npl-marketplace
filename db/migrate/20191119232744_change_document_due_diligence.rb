class ChangeDocumentDueDiligence < ActiveRecord::Migration[5.2]
  def change
    change_column :due_diligences, :contract_document, :string, nil
    change_column :due_diligences, :collateral_document, :string, nil
    change_column :due_diligences, :other_document, :string, nil
  end
end
