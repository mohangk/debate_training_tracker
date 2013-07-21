FactoryGirl.define do

  factory :admin_user do
    sequence(:email) { |n| "admin#{n}@test.com" }
    password 'password'
  end

end
