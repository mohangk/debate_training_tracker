class AddsLabsToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :lab, :string
  end
end
