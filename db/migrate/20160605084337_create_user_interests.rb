class CreateUserInterests < ActiveRecord::Migration
  def change
    create_table :user_interests do |t|
      t.integer :user_id
      t.integer :user_interest

      t.timestamps null: false
    end
  end
end
