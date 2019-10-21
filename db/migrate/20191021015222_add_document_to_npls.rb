class AddDocumentToNpls < ActiveRecord::Migration[5.2]
  def change
    add_column :npls, :document, :string
  end
end
