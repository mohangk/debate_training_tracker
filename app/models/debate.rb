class Debate < ActiveRecord::Base
  attr_accessible :scheduled_at, :topic, :venue, :admin_user, :admin_user_id

  has_many :trainings, inverse_of: :debate
  belongs_to :admin_user, inverse_of: :debates

  def name
    "#{topic} #{venue}"
  end
end
