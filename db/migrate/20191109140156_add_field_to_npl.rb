class AddFieldToNpl < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :due_diligence, :boolean
    add_column :npls, :guarantor_name, :string
    add_column :npls, :guarantor_cnpj, :string
  end
end
