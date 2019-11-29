class AddUserToDueDiligence < ActiveRecord::Migration[5.2]
  def change
    add_column :due_diligences, :lawyer_id, :integer, default: nil
  end
end
