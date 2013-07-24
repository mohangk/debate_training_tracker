class Lab < ActiveRecord::Base
  has_many :users
  has_many :admin_users

  validates :name, uniqueness: true

  attr_accessible :name



end
