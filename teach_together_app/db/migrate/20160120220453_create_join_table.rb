class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :networks, :users do |t|
      t.index [:network_id, :user_id]
      t.integer [:user_id, :network_id]
    end
  end
end
