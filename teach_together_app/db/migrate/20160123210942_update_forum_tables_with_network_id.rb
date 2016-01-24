class UpdateForumTablesWithNetworkId < ActiveRecord::Migration
  def change
    change_table :forum_tables do |t|
      t.column :network_id, :integer
    end
  end
end
