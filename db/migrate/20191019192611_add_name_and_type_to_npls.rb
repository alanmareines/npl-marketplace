class AddNameAndTypeToNpls < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :name, :string
    add_column :npls, :npl_type, :string
  end
end
