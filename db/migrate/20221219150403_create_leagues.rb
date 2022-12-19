class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
