class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_goals, dependent: :destroy
  has_many :goals, through: :users_goals
  has_many :trainings, dependent: :destroy
  validates :name, presence: true
  validates :institution, presence: true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :institution
  # attr_accessible :title, :body

  def goals
    UsersGoal.for_user self
  end

  def custom_goals
    UsersGoal.custom_goals self
  end

  def to_s
    name
  end

end
