class Team < ActiveRecord::Base
  has_many :user_team_relationships
  has_many :following_users, through: :user_team_relationships
end
