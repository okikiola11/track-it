require 'rails_helper'

RSpec.describe Measure, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:time) }
    it { should validate_presence_of(:count) }
  end

  describe 'associations' do
    it { should belong_to(:training) }
    it { should belong_to(:user) }
  end
end
