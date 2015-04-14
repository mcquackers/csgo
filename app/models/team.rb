class Team < ActiveRecord::Base
  has_many :user_team_relationships
  has_many :following_users, through: :user_team_relationships

  def matches
    Match.where("team_one_id = ? OR team_two_id = ?", id, id)
  end

  def upcoming_matches
    matches.where(match_time > Time.now)
  end
end
