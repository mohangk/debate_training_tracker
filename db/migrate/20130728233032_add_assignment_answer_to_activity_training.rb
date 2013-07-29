class AddAssignmentAnswerToActivityTraining < ActiveRecord::Migration
  def change
    add_column :trainings, :assignment_answer, :text
  end
end
