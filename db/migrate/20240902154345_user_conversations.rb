class UserConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_conversations do |t|
      t.references :user, foreign_key: true
      t.references :conversation, foreign_key: true
      t.timestamps
    end

    add_index :user_conversations, [:user_id, :conversation_id], unique: true
  end
end
