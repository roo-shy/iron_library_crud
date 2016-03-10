class User < ActiveRecord::Base

  validates :email, :name, :password, presence: true
end
