class CreateUserMailers < ActiveRecord::Migration
  def change
    create_table :user_mailers do |t|
      t.string :first_name
      t.string :email

      t.timestamps null: false
    end
  end
end
