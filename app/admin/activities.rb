ActiveAdmin.register Activity do
  index do
    column :scheduled_at
    column :name
    column :description
    column :venue
    column :admin_user
    default_actions
  end
end
