class TrainingAchievement < ActiveRecord::Base

  belongs_to :users_goal, inverse_of: :training_achievements
  belongs_to :training, inverse_of: :training_achievements

  validates :users_goal, presence: true
  validates :training, presence: true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :users_goal_id, :users_goal, :training_id, :score
  # attr_accessible :title, :body

  def user
    users_goal.user
  end

  def type
    training.type
  end

  def description
    users_goal.description
  end

  def to_s
    description
  end

end
