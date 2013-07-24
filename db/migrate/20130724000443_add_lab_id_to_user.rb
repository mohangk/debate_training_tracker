class AddLabIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :lab_id, :integer
    remove_column :users, :lab
  end
end
