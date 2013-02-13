class DebateTraining < Training

  belongs_to :debate, inverse_of: :trainings

  validates :debate, presence: true

  attr_accessible :adjudicator_feedback, 
    :manner, :margin, :matter, :method, 
    :my_feedback, :opponents, :position, 
    :score, :team_mates, :topic, :won, 
    :debate_id

  def name
    debate.topic
  end

  def scheduled_at
    debate.scheduled_at.strftime('%m %B %I:%M %p')
  end
end
