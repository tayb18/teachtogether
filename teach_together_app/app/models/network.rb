class Network < ActiveRecord::Base
  has_many :unit_plans
  has_many :lesson_plans
  has_many :members
  has_many :forums
  has_and_belongs_to_many :users
end