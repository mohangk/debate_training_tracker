class CreateDebates < ActiveRecord::Migration
  def change
    create_table :debates do |t|
      t.string :topic
      t.string :venue
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
