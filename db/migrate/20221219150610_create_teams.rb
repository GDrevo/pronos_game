class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :points, default: 0
      t.integer :victories, default: 0
      t.integer :defeats, default: 0
      t.integer :draws, default: 0
      t.integer :games_played, default: 0
      t.integer :goals_for, default: 0
      t.integer :goals_against, default: 0
      t.integer :goal_average, default: 0
      t.integer :clean_sheets, default: 0
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
