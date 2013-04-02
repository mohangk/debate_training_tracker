ActiveAdmin.register TrainingAchievement do
  index do
    column :user
    column :lab, sortable: false
    column :users_goal
    column :score
    column :training
    default_actions
  end

  filter :users_goal
  filter :training
  filter :users_goal_user_name, as: :select, collection: proc { User.all.map(&:name) }, label: 'user'
  filter :users_goal_user_lab, as: :select, collection:  User::LABS, label: 'lab'
end
