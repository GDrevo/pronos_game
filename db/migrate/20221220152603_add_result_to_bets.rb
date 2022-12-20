class AddResultToBets < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :result, :string, default: ""
  end
end
