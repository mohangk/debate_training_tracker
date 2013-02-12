class CreateTrainingAchievements < ActiveRecord::Migration
  def change
    create_table :training_achievements do |t|
      t.integer :score, default: 0
      t.integer :users_goal_id
      t.integer :training_id
      t.timestamps
    end
  end

end
