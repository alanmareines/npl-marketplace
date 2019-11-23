class ChangeBooleanNpls < ActiveRecord::Migration[5.2]
  def change
    change_column :npls, :due_diligence, :boolean, default: false
  end
end
