class UpdateNetworks < ActiveRecord::Migration
  def change
    change_table :networks do |t|
      t.references "user"
    end

  end
end
