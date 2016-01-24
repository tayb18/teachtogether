class UpdateNetworksWithMemberEmails < ActiveRecord::Migration
  def change
    change_table :networks do |t|
      t.column :member_emails, :string
    end
  end
end
