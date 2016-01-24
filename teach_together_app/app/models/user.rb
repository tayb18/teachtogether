class User < ActiveRecord::Base 

  has_secure_password
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }
  has_many :unit_plans
  has_many :lesson_plans
  has_many :comments
  has_many :forums
  has_and_belongs_to_many :networks


end