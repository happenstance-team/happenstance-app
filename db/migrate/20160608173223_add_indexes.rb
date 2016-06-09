class AddIndexes < ActiveRecord::Migration
  def change
  	add_index :conversations, :user1_id, name: 'index_conversations_on_user1_id'
  	add_index :conversations, :user2_id, name: 'index_conversations_on_user2_id'
  	add_index :messages, :user_id, name: 'index_messages_on_user_id'
  	add_foreign_key :messages, :users
  end
end
