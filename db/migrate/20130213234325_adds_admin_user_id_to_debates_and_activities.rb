class AddsAdminUserIdToDebatesAndActivities < ActiveRecord::Migration
  def change
    add_column :debates, :admin_user_id, :integer
    add_column :activities, :admin_user_id, :integer
  end
end
