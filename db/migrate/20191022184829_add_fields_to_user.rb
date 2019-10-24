class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf_cnpj, :bigint
    add_column :users, :phone, :bigint
  end
end
