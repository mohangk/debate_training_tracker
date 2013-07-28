FactoryGirl.define do
  factory :activity do
    scheduled_at Time.now
    topic 'Test activity'
    description 'Test activity description'
    venue 'Test venue'
    admin_user
  end
end
