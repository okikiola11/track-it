require 'faker'
FactoryBot.define do
  factory :user do
    name { 'kiki' }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
