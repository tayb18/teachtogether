class UpdateDefaultNullUpLp < ActiveRecord::Migration
  def change
    change_table :unit_plans do |t|
      t.remove :network_id
      t.column :network_id, :integer,  :null => true
    end
    change_table :lesson_plans do |t|
      t.remove :network_id
      t.column :network_id, :integer,  :null => true
    end
  end
end
