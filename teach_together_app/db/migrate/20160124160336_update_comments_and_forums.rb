class UpdateCommentsAndForums < ActiveRecord::Migration
  def change
    drop_table :comments_tables
    drop_table :forum_tables
    create_table :comments do |t|
      t.string "body"
      t.string "author"
      t.integer "forum_id"
    end
    create_table :forums do |t|
      t.string "title"
      t.string "body"
      t.string "author"
      t.integer "network_id"
      t.integer "user_id"
    end
  end
end
