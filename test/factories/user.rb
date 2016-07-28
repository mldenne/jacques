FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email "example@example.com"
    password "password"
  end
end
