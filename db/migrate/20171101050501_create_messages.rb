class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :sender, foreign_key: { to_table: :users }
      t.references :conversation, foreign_key: true
      t.text :body

      t.timestamps
      # To allow chronological sorting
      t.index :created_at
    end
  end
end
