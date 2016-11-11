FactoryGirl.define do
  factory :volunteer do
    name 'John Doe'
    email 'john.doe@gmail.com'
    password 'Abc123'
    gender 'female'
    date_of_birth '23.05.1984'
    mobile '1223123123'
    profession 'worker'
    other_talents 'many'
    about_me 'tall'

    trait :invalid do
      name nil
      email nil
      password nil
    end
  end
end
