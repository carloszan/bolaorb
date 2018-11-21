class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.integer :points
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
