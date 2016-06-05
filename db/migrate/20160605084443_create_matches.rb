class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user1_id
      t.integer :user2_id

      t.timestamps null: false
    end
  end
end
