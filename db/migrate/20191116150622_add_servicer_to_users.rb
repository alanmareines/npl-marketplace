class AddServicerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :servicer, :boolean, default: false
  end
end
