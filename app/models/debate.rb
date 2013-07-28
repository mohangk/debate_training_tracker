class Debate < ActiveRecord::Base
  attr_accessible :scheduled_at, :topic, :venue, :admin_user, :admin_user_id

  has_many :debate_trainings, inverse_of: :debate
  belongs_to :admin_user, inverse_of: :debates

  def self.for_user current_user
    Debate.includes(:admin_user).where('admin_users.lab_id = ?', current_user.lab_id)
  end

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
