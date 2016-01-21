class UpdateUnitPlanEnds < ActiveRecord::Migration
  def change
    change_table :unit_plans do |t|
      t.remove :end
      t.column :ends, :string
    end
  end
end
