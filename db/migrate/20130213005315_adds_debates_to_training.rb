class AddsDebatesToTraining < ActiveRecord::Migration
  def change
    add_column :trainings, :debate_id, :integer
  end
end
