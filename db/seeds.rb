# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

teams = CSV.read('./db/nhl-game-data/team_info.csv', headers: true, header_converters: :symbol)
puts "Read teams."
games = CSV.read('./db/nhl-game-data/game.csv', headers: true, header_converters: :symbol)
puts "Read games."
players = CSV.read('./db/nhl-game-data/player_info.csv', headers: true, header_converters: :symbol)
puts "Read players."
game_goalie_stats = CSV.read('./db/nhl-game-data/game_goalie_stats.csv', headers: true, header_converters: :symbol)
puts "Read goalie stats."
game_skater_stats = CSV.read('./db/nhl-game-data/game_skater_stats.csv', headers: true, header_converters: :symbol)
puts "Read skater stats."
game_teams_stats = CSV.read('./db/nhl-game-data/game_teams_stats.csv', headers: true, header_converters: :symbol)
puts "Read team stats."
puts "Read CSVs."

GameTeamsStatistics.destroy_all
GameSkaterStatistics.destroy_all
GameGoalieStatistics.destroy_all
Team.destroy_all
Game.destroy_all
Player.destroy_all
puts "Destroyed existing records."

teams.each do |team|
  team[:id] = team[:team_id].to_i
  team[:franchise_id] = team.delete(:franchiseid)
  team[:short_name] = team.delete(:shortname)
  team[:team_name] = team.delete(:teamname)
  Team.create!(team.to_h)
end
puts "Created teams."

games.each do |game|
  game[:id] = game[:game_id].to_i
  game[:game_type] = game.delete(:type)[1]
  Game.create(game.to_h)
end
puts "Created games."

players.each do |player|
  player[:id] = player[:player_id]
  player[:first_name] = player.delete(:firstname)[1]
  player[:last_name] = player.delete(:lastname)[1]
  player[:birth_city] = player.delete(:birthcity)[1]
  player[:primary_position] = player.delete(:primaryposition)[1]
  player[:birth_date] = player.delete(:birthdate)[1]
  Player.create(player.to_h)
end
puts "Created players."

#game_goalie_stats.each do |stat|
#  GameGoalieStatistics.create(stat.to_h)
#end
#puts "Creaed Goalie Statistics"

#game_skater_stats.each do |stat|
#  GameSkaterStatistics.create(stat.to_h)
#end
#puts "Creaed Skater Statistics"

game_teams_stats.each do |stat|
  GameTeamsStatistics.create(stat.to_h)
end
puts "Creaed Team Statistics"
