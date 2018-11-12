# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_12_011313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_goalie_statistics", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "player_id"
    t.bigint "team_id"
    t.integer "time_on_ice"
    t.integer "assists"
    t.integer "goals"
    t.integer "pim"
    t.integer "shots"
    t.integer "saves"
    t.integer "power_play_saves"
    t.integer "short_hand_saves"
    t.integer "even_saves"
    t.integer "short_handed_shots"
    t.integer "even_shots_against"
    t.integer "power_play_shots_against"
    t.integer "decision"
    t.decimal "save_percentage"
    t.decimal "power_polay_save_percentage"
    t.decimal "even_strength_save_percentage"
    t.index ["game_id"], name: "index_game_goalie_statistics_on_game_id"
    t.index ["player_id"], name: "index_game_goalie_statistics_on_player_id"
    t.index ["team_id"], name: "index_game_goalie_statistics_on_team_id"
  end

  create_table "game_skater_statistics", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.integer "team_id"
    t.integer "time_on_ice"
    t.string "assists_integer"
    t.integer "goals"
    t.integer "shots"
    t.integer "hits"
    t.integer "power_play_goals"
    t.integer "power_play_assists"
    t.integer "penalty_minutes"
    t.integer "face_off_wins"
    t.integer "face_off_taken"
    t.integer "takewaways"
    t.integer "giveaways"
    t.integer "short_handed_goals"
    t.integer "short_handed_assisst"
    t.integer "blocked"
    t.integer "plus_minus"
    t.integer "even_time_on_ice"
  end

  create_table "game_teams_statistics", force: :cascade do |t|
    t.string "game_teams_statistics"
    t.string "game_id"
    t.integer "team_id"
    t.integer "home_or_away"
    t.boolean "won"
    t.string "settled_in"
    t.string "head_coach"
    t.integer "goals"
    t.integer "shots"
    t.integer "hits"
  end

  create_table "games", force: :cascade do |t|
    t.integer "game_id"
    t.integer "season"
    t.integer "type"
    t.date "date_time"
    t.integer "away_team_id"
    t.integer "home_team_id"
    t.integer "away_goals"
    t.integer "home_goals"
    t.string "outcome"
    t.string "home_rink_side_start"
    t.string "venue"
    t.string "venue_link"
  end

  create_table "players", force: :cascade do |t|
    t.integer "player_id"
    t.string "first_name"
    t.string "last_name"
    t.string "nationality"
    t.string "birth_city"
    t.string "primary_position"
    t.date "birth_date"
    t.string "link"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "team_id"
    t.integer "franchise_id"
    t.string "short_name"
    t.string "team_name"
    t.string "abbreviation"
    t.string "link"
  end

  add_foreign_key "game_goalie_statistics", "games"
  add_foreign_key "game_goalie_statistics", "players"
  add_foreign_key "game_goalie_statistics", "teams"
end
