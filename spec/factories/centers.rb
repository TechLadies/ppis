FactoryGirl.define do
  factory :center do
    name 'PPIS Command Center'
    manager_name 'John Doe'
    email 'john.doe@gmail.com'
    contact_number '123123123'
    address '113b Jalan Besar'

    trait :invalid do
      name nil
      manager_name nil
      email nil
      contact_number nil
      address nil
    end
  end
end
