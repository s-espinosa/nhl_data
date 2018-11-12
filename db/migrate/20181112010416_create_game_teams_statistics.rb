class CreateGameTeamsStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :game_teams_statistics do |t|
      t.string :game_teams_statistics
      t.string :game_id
      t.integer :team_id
      t.integer :home_or_away
      t.boolean :won
      t.string :settled_in
      t.string :head_coach
      t.integer :goals
      t.integer :shots
      t.integer :hits
    end
  end
end
