class User < ApplicationRecord
  has_secure_password
  validates_presence_of :name, :email, :password_digest
  validates_uniqueness_of :name, :email
  validates_format_of :email, with: /\A\S+@.+\.\S+\z/
  has_many :trainings
  has_many :measures
end
