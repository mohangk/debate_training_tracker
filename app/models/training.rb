class Training < ActiveRecord::Base

  belongs_to :user
  belongs_to :debate

  has_many :training_achievements, inverse_of: :training, dependent: :destroy

  validates :user_id, presence: true

  accepts_nested_attributes_for :training_achievements

  attr_accessible :adjudicator_feedback, :manner, :margin, :matter, :method, :my_feedback, :opponents, :position, :score, :team_mates, :topic, :won, :training_achievements_attributes, :debate_id

  def self.for_user user
    Training.where(user_id: user.id)
  end

end
