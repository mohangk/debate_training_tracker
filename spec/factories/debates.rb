FactoryGirl.define do
  factory :debate do
    scheduled_at Time.now
    topic 'Test debate'
    venue 'Test venue'
    admin_user
  end
end
