class User < ActiveRecord::Base
  
  has_secure_password

  validates :password_confirmation, presence: true
end
