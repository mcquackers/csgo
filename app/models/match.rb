class Match < ActiveRecord::Base
  belongs_to :team_one, source: :team
  belongs_to :team_two, source: :team

  has_one :match_result
end
