class Player < ApplicationRecord
  has_many :game_skater_statistics
  has_many :game_goalie_statistics
end
