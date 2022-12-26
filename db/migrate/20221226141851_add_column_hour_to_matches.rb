class AddColumnHourToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :hour, :integer, default: 0
  end
end
