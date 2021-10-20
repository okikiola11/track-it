RSpec.describe Measurement, type: :model do
  it { should have_many(:measures).dependent(:destroy) }  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:created_by) }
end
