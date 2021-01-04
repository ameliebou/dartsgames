class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :sets
      t.integer :legs
      t.integer :type
      t.string :password

      t.timestamps
    end
  end
end
