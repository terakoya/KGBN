class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :body, null: false, limit: 300

      t.timestamps
    end

    add_index :topics, :user_id
  end
end

