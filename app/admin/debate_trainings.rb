ActiveAdmin.register DebateTraining do
  menu label: 'Debate feedback', priority: 22 
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
