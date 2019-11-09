  class CreateDueDiligences < ActiveRecord::Migration[5.2]
  def change
    create_table :due_diligences do |t|
      t.boolean :book_value_valid
      t.boolean :npl_type_valid
      t.boolean :debtor_valid
      t.boolean :maturity_date_valid
      t.boolean :collateral_description_valid
      t.boolean :guarantor_valid
      t.references :npl, foreign_key: true
      t.text :contract_document, array: true, default: []
      t.text :collateral_document, array: true, default: []
      t.text :other_document, array: true, default: []
      t.text :legal_opinion
      t.string :api_info
      t.boolean :finished

      t.timestamps
    end
  end
end
