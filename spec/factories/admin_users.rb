FactoryGirl.define do

  factory :admin_user do
    sequence(:email) { |n| "admin#{n}@test.com" }
    name 'Admin user'
    password 'password'
  end

end
