class Goal < ActiveRecord::Base
  attr_accessible :category, :description
  has_many :users_goals, dependent: :destroy
  has_many :users, through: :users_goals

  def is_set?(user)
    users.where(id: user.id).count > 0
  end

  def user_goal(user)
    users_goals.where(user_id: user.id).first
  end

  def to_s
    description
  end
end
