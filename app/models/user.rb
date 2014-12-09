class User < ActiveRecord::Base
  # Remember to create a migration!

  has_many :tweets
  has_many :follows

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true


end
