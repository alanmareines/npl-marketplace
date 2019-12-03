class AddDebtorCpfCnpjToNpls < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :debtor_cpf_cnpj, :string
  end
end
