class NetworkUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :network

  self.table_name = "networks_users"
end