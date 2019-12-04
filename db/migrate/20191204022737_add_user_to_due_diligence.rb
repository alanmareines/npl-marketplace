class AddUserToDueDiligence < ActiveRecord::Migration[5.2]
  def change
    add_reference :due_diligences, :user, foreign_key: true 
  end
end
