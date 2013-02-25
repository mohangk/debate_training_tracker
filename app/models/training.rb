class Training < ActiveRecord::Base

  belongs_to :user

  has_many :training_achievements, inverse_of: :training, dependent: :destroy

  validates :user_id, presence: true

  accepts_nested_attributes_for :training_achievements

  attr_accessible :training_achievements_attributes

  def self.for_user user
    where(user_id: user.id)
  end

  def human_type
    type.gsub 'Training', ''
  end

  def positive_achievements
    training_achievements.where('score > 0')
  end

  def has_positive_achievements?
    positive_achievements.count > 0
  end
end
