class Game < ApplicationRecord
  has_many :game_skater_statistics
  has_many :game_teams_statistics
  has_many :game_goalie_statistics
  belongs_to :home_team, foreign_key: :home_team_id, class_name: "Team"
  belongs_to :away_team, foreign_key: :away_team_id, class_name: "Team"
end
