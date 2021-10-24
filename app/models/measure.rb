class Measure < ApplicationRecord
  belongs_to :user
  belongs_to :training
  validates_presence_of :count, :time
end
