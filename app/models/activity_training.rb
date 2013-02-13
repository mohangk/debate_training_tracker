class ActivityTraining < Training

  belongs_to :activity, inverse_of: :trainings

  validates :activity, presence: true

  attr_accessible :adjudicator_feedback, 
    :my_feedback, :activity_id

  def name
    activity.long_name
  end

  def description
    activity.description
  end

  def scheduled_at
    activity.scheduled_at.strftime('%m %B %I:%M %p')
  end
end
