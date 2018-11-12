class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.integer :franchise_id
      t.string :short_name
      t.string :team_name
      t.string :abbreviation
      t.string :link
    end
  end
end
