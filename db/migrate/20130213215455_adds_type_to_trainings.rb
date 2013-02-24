class AddsTypeToTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :type, :string
    add_column :trainings, :activity_id, :integer
  end
end
