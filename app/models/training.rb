class Training < ActiveRecord::Base
  attr_accessible :adjudicator_feedback, :manner, :margin, :matter, :method, :my_feedback, :opponents, :position, :score, :team_mates, :topic, :won
end
