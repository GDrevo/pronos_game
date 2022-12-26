class ChangeDatetimeToDateInMatches < ActiveRecord::Migration[7.0]
  def change
    change_column :matches, :date, :date
  end
end
