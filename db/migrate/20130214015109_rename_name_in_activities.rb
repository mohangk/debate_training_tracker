class RenameNameInActivities < ActiveRecord::Migration
  def change
    rename_column :activities, :name, :topic 
  end
end
