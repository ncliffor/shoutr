class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships do |t|
      t.integer :follower_id
      t.integer :followed_user_id

      t.timestamps
    end

    add_index :following_relationships, :follower_id
    add_index :following_relationships, :followed_user_id

    add_index :following_relationships, [:follower_id, :followed_user_id], unique: true, name: "unique_index_on_followers"
  end
end
