RSpec.describe Measure, type: :model do
  it { should belong_to(:measurement) }
  it { should validate_presence_of(:value_of_measure) }
end
