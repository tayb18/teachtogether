class UpdateComments < ActiveRecord::Migration
  def change
    change_table :comments_tables do |t|
      t.column :forum_id, :integer
    end
  end
end
