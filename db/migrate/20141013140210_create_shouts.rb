class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.integer :user_id
      t.string :body

      t.timestamps
    end

    add_index :shouts, :user_id
  end
end
