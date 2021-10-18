class User < ApplicationRecord
  has_secure_password

  # Validations
  validates_uniqueness_of :name, :email
  validates_presence_of :name, :email, :password_digest
end
