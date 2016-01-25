class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer "invitor_id"
      t.integer "user_id"
      t.integer "network_id"
      t.boolean "responded_to?"
    end
  end
end
