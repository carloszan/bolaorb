class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :homeTeam
      t.string :awayTeam
      t.timestamp :hour
      t.integer :scoreHomeTeam
      t.integer :scoreAwayTeam

      t.timestamps
    end
  end
end
