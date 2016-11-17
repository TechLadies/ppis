FactoryGirl.define do
  factory :formal_education do

    sequence(:name) { |i| "Name #{i}" }

    trait :invalid do
      name nil
    end
  end
end
