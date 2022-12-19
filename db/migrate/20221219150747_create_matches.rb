class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :result
      t.date :date
      t.boolean :played, default: false
      t.references :team_home, null: false
      t.references :team_away, null: false
      t.references :matchweek, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :matches, :teams, column: :team_home_id
    add_foreign_key :matches, :teams, column: :team_away_id
  end
end
