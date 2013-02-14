class RemoveUnusedFieldsInTrainings < ActiveRecord::Migration
  def change
    remove_column :trainings, :opponents
    remove_column :trainings, :team_mates
    remove_column :trainings, :margin
    remove_column :trainings, :topic
  end
end
