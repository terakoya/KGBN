class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :topic_id, null: false
      t.text :body, null: false, limit: 300

      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :topic_id
  end
end
