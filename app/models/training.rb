class Training < ActiveRecord::Base
  belongs_to :user

  attr_accessible :adjudicator_feedback, :manner, :margin, :matter, :method, :my_feedback, :opponents, :position, :score, :team_mates, :topic, :won

  def self.for_user user
    Training.where(user_id: user.id)
  end
end
