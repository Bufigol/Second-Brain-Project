class User < ApplicationRecord
  self.table_name = "usuarios"
  has_secure_password :password, attribute: :password_hash

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end