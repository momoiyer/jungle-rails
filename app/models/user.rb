class User < ApplicationRecord
  has_secure_password
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials (email,password)
    user = User.find_by_email(email.strip.downcase)

    # If the user exists AND the password entered is correct return user
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end
