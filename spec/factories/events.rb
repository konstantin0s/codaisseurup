# spec/factories/rooms.rb

FactoryBot.define do
  factory :event do

    name      { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    location           { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity       2
    #starts_at
    #ends_at

    includes_food       true
    includes_drinks      true
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
