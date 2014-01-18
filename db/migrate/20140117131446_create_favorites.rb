class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false
      t.integer :target_id, null: false
      t.string :target_type, null: false

      t.timestamps
    end

    add_index :favorites, :user_id
    add_index :favorites, :target_id
    add_index :favorites, :target_type
  end
end
