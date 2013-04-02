ActiveAdmin.register ActivityTraining do
  menu label: 'Activity feedback', priority: 21
  index do
    column :scheduled_at
    column :adjudicator_feedback
    column :my_feedback
    column :user
    column :lab, sortable: false
    column :activity
    default_actions
  end

  form do |f|
    f.inputs "Activity training" do
      f.input :activity
      f.input :adjudicator_feedback
      f.input :my_feedback
    end
    f.actions
  end


  filter :activity_admin_user_name, as: :select, collection: proc { AdminUser.all.map(&:name) }
  filter :activity
  filter :user
  filter :user_lab, as: :select, collection: User::LABS

end
