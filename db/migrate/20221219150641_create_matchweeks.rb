class CreateMatchweeks < ActiveRecord::Migration[7.0]
  def change
    create_table :matchweeks do |t|
      t.integer :number
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
