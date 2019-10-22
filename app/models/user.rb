class User < ActiveRecord::Base
  
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_confirmation, presence: true, length: { minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true

end
