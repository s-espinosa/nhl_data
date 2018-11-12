class CreateGameSkaterStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :game_skater_statistics do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :team_id
      t.integer :time_on_ice
      t.string :assists_integer
      t.integer :goals
      t.integer :shots
      t.integer :hits
      t.integer :power_play_goals
      t.integer :power_play_assists
      t.integer :penalty_minutes
      t.integer :face_off_wins
      t.integer :face_off_taken
      t.integer :takewaways
      t.integer :giveaways
      t.integer :short_handed_goals
      t.integer :short_handed_assisst
      t.integer :blocked
      t.integer :plus_minus
      t.integer :even_time_on_ice
    end
  end
end
