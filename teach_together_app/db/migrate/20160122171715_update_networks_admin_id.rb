class UpdateNetworksAdminId < ActiveRecord::Migration
  def change
    change_table :networks do |t|
      t.remove :user_id
      t.column :admin_id, :integer
    end
  end
end
