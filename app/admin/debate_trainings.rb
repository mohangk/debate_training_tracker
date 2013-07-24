ActiveAdmin.register DebateTraining do
  menu label: 'Debate feedback', priority: 22
  index do
    column :scheduled_at
    column :adjudicator_feedback
    column :my_feedback
    column :user
    column :lab, sortable: false
    column :score
    column :debate
    column :position
    column :won
    default_actions
  end


  filter :debate_admin_user_name, as: :select, collection: proc { AdminUser.all.map(&:name) }
  filter :debate
  filter :user
  filter :user_lab_name, as: :select, collection: proc { Lab.all.map(&:name) }, label: 'lab'

end
