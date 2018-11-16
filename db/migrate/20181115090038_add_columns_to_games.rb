class AddColumnsToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :venue_time_zone_id, :string
    add_column :games, :venue_time_zone_offset, :integer
    add_column :games, :venue_time_zone_tz, :string
  end
end
