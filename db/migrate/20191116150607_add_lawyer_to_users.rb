class AddLawyerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lawyer, :boolean, default: false
  end
end
