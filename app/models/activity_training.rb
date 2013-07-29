class ActivityTraining < Training

  belongs_to :activity, inverse_of: :activity_trainings
  belongs_to :user, inverse_of: :activity_trainings

  validates :activity, presence: true

  attr_accessible :adjudicator_feedback,
    :my_feedback, :activity_id, :assignment_answer

  def name
    activity && activity.topic
  end

  def description
    activity && activity.description
  end

  def scheduled_at
    activity && activity.scheduled_at
  end

  def lab
    user.lab
  end
end
