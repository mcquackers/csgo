class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :user_team_relationships
  has_many :followed_teams, through: :user_team_relationships

  def upcoming_matches
    scheduled_matches = []
    followed_teams.each do |team|
      scheduled_matches += team.upcoming_matches
    end
    scheduled_matches
  end
end
