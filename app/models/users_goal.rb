class UsersGoal < ActiveRecord::Base
  attr_accessible :description, :goal_id, :user_id
  belongs_to :user
  belongs_to :goal

  has_many :training_achievements, inverse_of: :users_goal, dependent: :destroy

  validates :user_id, presence: true
  validates :goal_id, uniqueness: {scope: :user_id, allow_nil: true, allow_blank: true}

  def self.for_user user
    UsersGoal.where(user_id: user.id)
  end

  def description
    return goal.description if goal
    super
  end

  def self.custom_goals user
    UsersGoal.for_user(user).where(goal_id: nil)
  end

  def to_s
    description
  end

  def average
    return 0 if training_achievements.count == 0
    sum = training_achievements.inject(0) { |sum, x| sum + x.score } 
    sum/training_achievements.count
  end

end
