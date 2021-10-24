class Training < ApplicationRecord
  belongs_to :user
  has_many :measures
  validates :name, presence: true
  validates_uniqueness_of :name
end
