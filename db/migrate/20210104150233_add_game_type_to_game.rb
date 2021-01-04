class AddGameTypeToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :game_type, :integer
    remove_column :games, :type
  end
end
