class UpdateUnitPLanNetworkIdDefault < ActiveRecord::Migration
  def change
    change_table :unit_plans do |t|
      t.remove :network_id
      t.column :network_id, :integer,  :default => 0
    end
  end
end
