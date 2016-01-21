class CreateNetworksUsers < ActiveRecord::Migration
  def change
    create_table :networks_users do |t|
      t.integer "network_id"
      t.integer "user_id"
    end
  end
end
