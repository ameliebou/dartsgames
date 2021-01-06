class CreateWonLegs < ActiveRecord::Migration[6.0]
  def change
    create_table :won_legs do |t|
      t.references :player, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
