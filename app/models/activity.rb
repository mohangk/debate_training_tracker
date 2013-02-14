class Activity < ActiveRecord::Base
  attr_accessible :scheduled_at, :topic, :venue, :description, :admin_user, :admin_user_id

  has_many :trainings, inverse_of: :activity
  belongs_to :admin_user, inverse_of: :activities

  def name
    "#{topic} #{venue}"
  end
end
