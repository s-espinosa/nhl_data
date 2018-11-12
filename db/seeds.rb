# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

teams = CSV.read('./nhl-game-data/team_info.csv', headers: true, header_converters: :symbol)
games = CSV.read('./nhl-game-data/game.csv', headers: true, header_converters: :symbol)
players = CSV.read('./nhl-game-data/player_info.csv', headers: true, header_converters: :symbol)
game_goalie_stats = CSV.read('./nhl-game-data/game_goalie_stats.csv', headers: true, header_converters: :symbol)
game_skater_stats = CSV.read('./nhl-game-data/game_skater_stats.csv', headers: true, header_converters: :symbol)
game_teams_stats = CSV.read('./nhl-game-data/game_teams_stats.csv', headers: true, header_converters: :symbol)

teams.each do |team|
  team[:id] = team[:team_id]
  Team.create(team)
end


