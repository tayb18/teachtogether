class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments_tables do |t|
      t.string "body"
      t.string "author"
    end
  end
end
