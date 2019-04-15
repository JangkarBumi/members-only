class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true

  before_create do
   token = SecureRandom.urlsafe_base64 
   token2 = Digest::SHA1.hexdigest(token.to_s)
  end
end
