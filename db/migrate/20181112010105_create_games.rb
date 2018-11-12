class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :game_id
      t.integer :season
      t.integer :type
      t.date :date_time
      t.integer :away_team_id, foreign_key: true
      t.integer :home_team_id, foreign_key: true
      t.integer :away_goals
      t.integer :home_goals
      t.string :outcome
      t.string :home_rink_side_start
      t.string :venue
      t.string :venue_link
    end
  end
end
