class UpdateUnitPlan < ActiveRecord::Migration
  def change
    change_table :unit_plans do |t|
      t.column :author, :string
      t.column :grade, :string
      t.column :subject, :string
      t.column :start, :string
      t.column :end, :string
      t.column :description, :string
      t.column :big_idea, :string
      t.column :essential_question, :string
      t.column :standard, :string
      t.column :swbat, :string
      t.column :formal_assessment, :string
      t.column :informal_assessment, :string
      t.column :key_vocabulary, :string
      t.column :material, :string
    end
  end
end
