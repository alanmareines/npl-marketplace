class ChangeDefaultDueDiligences2 < ActiveRecord::Migration[5.2]
  def change
        change_column :due_diligences, :contract_document, :string, default: nil
  end
end
