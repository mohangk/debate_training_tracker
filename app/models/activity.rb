class Activity < ActiveRecord::Base
  attr_accessible :scheduled_at, :name, :venue, :description

  has_many :trainings, inverse_of: :activity

  def long_name
    "#{name} #{venue}"
  end
end
