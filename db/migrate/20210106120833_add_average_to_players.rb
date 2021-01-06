class AddAverageToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :average, :float, default: 0.0
  end
end
