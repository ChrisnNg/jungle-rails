class User < ActiveRecord::Base
  
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_confirmation, presence: true, length: { minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  before_save { self.email.downcase!}

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase
    user = User.find_by_email(email)
    if user && user.authenticate(password)
      user
    else
      nil
    end

  end


end