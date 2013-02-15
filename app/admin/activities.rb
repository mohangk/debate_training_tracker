ActiveAdmin.register Activity do
  menu priority: 11
  index do
    column :scheduled_at
    column :topic
    column :description
    column :venue
    column :admin_user
    default_actions
  end

  form do |f|

    f.inputs "Activity" do
      if f.object.new_record? and f.object.scheduled_at.nil?
        f.object.scheduled_at = Time.now
      end

      if f.object.new_record? and f.object.admin_user.nil?
        f.object.admin_user = current_admin_user
      end
      f.input :scheduled_at
      f.input :topic
      f.input :venue
      f.input :description
      f.input :admin_user
    end

    f.actions
  end
end
