ActiveAdmin.register Activity do
  index do
    column :scheduled_at
    column :topic
    column :description
    column :venue
    column :admin_user
    default_actions
  end
end
