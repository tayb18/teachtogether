class UpdateForumTablesWithUserId < ActiveRecord::Migration
  def change
    change_table :forum_tables do |t|
      t.column :user_id, :integer
    end
  end
end
