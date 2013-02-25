class DebateTraining < Training

  belongs_to :debate, inverse_of: :debate_trainings

  validates :debate, presence: true

  attr_accessible :adjudicator_feedback, 
    :manner, :margin, :matter, :method, 
    :my_feedback, :opponents, :position, 
    :score, :team_mates, :topic, :won, 
    :debate_id

  def name
    debate && debate.topic
  end

  def scheduled_at
    debate && debate.scheduled_at
  end

  def lab
    user.lab
  end

  def description

  end

end
