class CreateGameGoalieStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :game_goalie_statistics do |t|
      t.references :game, foreign_key: true
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :time_on_ice
      t.integer :assists
      t.integer :goals
      t.integer :pim
      t.integer :shots
      t.integer :saves
      t.integer :power_play_saves
      t.integer :short_hand_saves
      t.integer :even_saves
      t.integer :short_handed_shots
      t.integer :even_shots_against
      t.integer :power_play_shots_against
      t.integer :decision
      t.decimal :save_percentage
      t.decimal :power_polay_save_percentage
      t.decimal :even_strength_save_percentage
    end
  end
end
