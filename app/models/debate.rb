class Debate < ActiveRecord::Base
  attr_accessible :scheduled_at, :topic, :venue

  has_many :trainings, inverse_of: :debate

  def name
    "#{topic} #{venue}"
  end
end
