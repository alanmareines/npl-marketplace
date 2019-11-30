class CreateDebtors < ActiveRecord::Migration[5.2]
  def change
    create_table :debtors do |t|
      t.string :name
      t.string :cpf
      t.string :cpf_date
      t.string :cpf_situation
      t.string :birth_date
      t.string :email
      t.text :address
      t.boolean :dead
      t.int :age
      t.text :companies
      t.text :lawsuits
      t.text :family
      t.text :phone
      t.string :sex
      t.boolean :public_server
      

      t.timestamps
    end
  end
end
