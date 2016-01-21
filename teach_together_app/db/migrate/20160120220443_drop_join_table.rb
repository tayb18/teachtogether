class DropJoinTable < ActiveRecord::Migration
  def change
    drop_table :networks_users
  end
end
