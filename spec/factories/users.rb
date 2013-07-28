FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "debater#{n}@test.com" }
    name 'Logan'
    institution 'Test institution'
    password 'password'
    lab
  end

end
