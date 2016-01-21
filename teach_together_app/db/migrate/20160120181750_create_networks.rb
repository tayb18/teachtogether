class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string "network_name"
    end
  end
end
