ActiveAdmin.register Debate do
  index do
    column :scheduled_at
    column :topic
    column :venue
    column :admin_user
    default_actions
  end
end
