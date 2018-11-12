class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :player_id
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.string :birth_city
      t.string :primary_position
      t.date :birth_date
      t.string :link
    end
  end
end
