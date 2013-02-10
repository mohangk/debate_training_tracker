class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :topic
      t.text :my_feedback
      t.text :adjudicator_feedback
      t.string :team_mates
      t.string :opponents
      t.string :position
      t.boolean :won
      t.integer :margin
      t.integer :score
      t.integer :matter
      t.integer :manner
      t.integer :method

      t.timestamps
    end
  end
end
