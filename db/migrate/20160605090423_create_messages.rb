class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :conversation_id
      t.integer :user_id
      t.datetime :read_at
      t.references :conversation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
