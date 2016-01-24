class Forum < ActiveRecord::Base
  belongs_to :network
  has_many :comments

end