class User < ApplicationRecord
  has_secure_password

  # Validations
  validates_uniqueness_of :name
  validates_presence_of :name, :password_digest
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
end
