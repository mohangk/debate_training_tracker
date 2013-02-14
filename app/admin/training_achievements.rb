ActiveAdmin.register TrainingAchievement do
  index do
    column :user
    column :users_goal
    column :score
    column :training
    default_actions
  end
end
