class UpdateLessonPLanNetworkIdDefault < ActiveRecord::Migration
  def change
    change_table :lesson_plans do |t|
      t.remove :network_id
      t.column :network_id, :integer, :default => 0
    end
  end
end
