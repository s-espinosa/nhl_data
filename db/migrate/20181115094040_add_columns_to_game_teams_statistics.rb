class AddColumnsToGameTeamsStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :game_teams_statistics, :pim, :integer
    add_column :game_teams_statistics, :power_play_opportunities, :integer
    add_column :game_teams_statistics, :power_play_goals, :integer
    add_column :game_teams_statistics, :face_off_win_percentage, :decimal
    add_column :game_teams_statistics, :giveaways, :integer
    add_column :game_teams_statistics, :takeaways, :integer
  end
end
