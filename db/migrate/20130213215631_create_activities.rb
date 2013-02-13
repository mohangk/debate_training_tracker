class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :venue
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
