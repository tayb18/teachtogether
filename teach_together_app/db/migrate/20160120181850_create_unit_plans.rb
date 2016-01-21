class CreateUnitPlans < ActiveRecord::Migration
  def change
    create_table :unit_plans do |t|
      t.string "title"
      t.timestamps "date_created"
      t.integer "user_id"
      t.integer "network_id"
      t.string "document_url"
      t.boolean "is_public?"
    end
  end
end
