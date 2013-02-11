class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
