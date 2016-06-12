class AddForeignKeyAndIndexToMatches < ActiveRecord::Migration
  def change
  	add_index :matches, :user1_id, name: 'index_matches_on_user1_id'
  	add_index :matches, :user2_id, name: 'index_matches_on_user2_id'
  end
end
