class Debate < ActiveRecord::Base
  attr_accessible :scheduled_at, :topic, :venue, :admin_user, :admin_user_id

  has_many :debate_trainings, inverse_of: :debate
  belongs_to :admin_user, inverse_of: :debates

  def name
    "#{topic} #{venue}"
  end

  def scheduled_at

    scheduled_at_obj = super

    unless scheduled_at_obj.nil?
      def scheduled_at_obj.to_s
        self.strftime('%d %B %I:%M %p')
      end
    end

    scheduled_at_obj

  end
end
