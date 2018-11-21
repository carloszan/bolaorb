class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.timestamp :hour
      t.integer :tipHomeTeam
      t.integer :tipAwayTeam
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
