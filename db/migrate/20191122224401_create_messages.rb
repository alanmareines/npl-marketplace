class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :due_diligence, foreign_key: true
      t.text :content
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
