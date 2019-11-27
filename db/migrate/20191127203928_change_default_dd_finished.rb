class ChangeDefaultDdFinished < ActiveRecord::Migration[5.2]
  def change
    change_column :due_diligences, :finished, :boolean, default: false
  end
end
