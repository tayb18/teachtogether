class UpdateLessonPlanTable < ActiveRecord::Migration
  def change
      change_table :lesson_plans do |t|
      t.column :author, :string
      t.column :grade, :string
      t.column :subject, :string
      t.column :date_and_time, :string
      t.column :standard, :string
      t.column :objective, :string
      t.column :essential_question, :string
      t.column :assessment, :string
      t.column :vocabulary, :string
      t.column :introduction, :string
      t.column :learning_plan, :string
      t.column :material, :string
      t.column :closing_summary, :string
    end
  end
end
 