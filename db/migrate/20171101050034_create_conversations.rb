class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.references :user1, foreign_key: true
      t.references :user2, foreign_key: true

      t.timestamps
    end
  end
end
