require 'faker'
FactoryBot.define do
  factory :measure do
    time { 1 }
    count { 1 }
    user { nil }
    training { nil }
  end
end
