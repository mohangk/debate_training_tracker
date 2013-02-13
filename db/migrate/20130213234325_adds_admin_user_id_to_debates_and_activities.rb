class AddsAdminUserIdToDebatesAndActivities < ActiveRecord::Migration
  def change
    add_column :debates, :admin_user_id, :string
    add_column :activities, :admin_user_id, :string
  end
end
