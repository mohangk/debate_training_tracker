class AddLabIdToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :lab_id, :integer
    remove_column :admin_users, :lab
  end
end
