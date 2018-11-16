class RenameShortHandSavesToShortHandedSaves < ActiveRecord::Migration[5.2]
  def change
    rename_column :game_goalie_statistics, :short_hand_saves, :short_handed_saves
    rename_column :game_goalie_statistics, :short_handed_shots, :short_handed_shots_against
    rename_column :game_goalie_statistics, :power_polay_save_percentage, :power_play_save_percentage
    rename_column :game_skater_statistics, :short_handed_assisst, :short_handed_assists
  end
end
