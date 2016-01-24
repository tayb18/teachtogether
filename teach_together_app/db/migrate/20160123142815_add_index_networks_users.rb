class AddIndexNetworksUsers < ActiveRecord::Migration
  def change
    add_index "networks_users", ["network_id", "user_id"], name: "index_networks_users_on_network_id_and_user_id", using: :btree
    add_index "networks_users", ["user_id", "network_id"], name: "index_networks_users_on_user_id_and_network_id", using: :btree
  end
end
