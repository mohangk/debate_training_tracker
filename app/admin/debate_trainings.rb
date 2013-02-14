ActiveAdmin.register DebateTraining do
  index do
    column :scheduled_at
    column :adjudicator_feedback
    column :my_feedback
    column :user
    column :score
    column :debate
    column :position
    column :won
    default_actions
  end
  
end
