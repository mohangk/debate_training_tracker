class Debate < ActiveRecord::Base
  attr_accessible :scheduled_at, :topic, :venue

  def name
    "#{scheduled_at.strftime('%m %B %I:%M %p')} #{topic} #{venue}"
  end
end
