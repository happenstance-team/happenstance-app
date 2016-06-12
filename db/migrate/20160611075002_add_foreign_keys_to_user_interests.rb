class AddForeignKeysToUserInterests < ActiveRecord::Migration
  def change
  	add_foreign_key :user_interests, :users
  	add_foreign_key :user_interests, :interests
  end
end
