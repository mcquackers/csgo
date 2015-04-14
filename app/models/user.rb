class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :user_team_relationships
  has_many :followed_teams, through: :user_team_relationships
end
