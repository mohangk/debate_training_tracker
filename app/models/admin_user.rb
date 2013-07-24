class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :lab_id

  has_many :debates, inverse_of: :admin_user
  has_many :activities, inverse_of: :admin_user
  has_many :debate_trainings, through: :debates
  has_many :activity_trainings, through: :activities

  belongs_to :lab, inverse_of: :admin_users

  validates :lab, presence: true

  def to_s
    name
  end

end
