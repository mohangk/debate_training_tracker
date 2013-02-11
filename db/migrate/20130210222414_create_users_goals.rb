class CreateUsersGoals < ActiveRecord::Migration
  def change
    create_table :users_goals do |t|
      t.integer :user_id
      t.string :description
      t.integer :goal_id

      t.timestamps
    end
  end
end
