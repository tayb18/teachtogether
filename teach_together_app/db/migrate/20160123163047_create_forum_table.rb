class CreateForumTable < ActiveRecord::Migration
  def change
    create_table :forum_tables do |t|
      t.string "title"
      t.string "body"
      t.string "author"
    end
  end
end
