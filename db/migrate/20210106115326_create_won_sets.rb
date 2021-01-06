class CreateWonSets < ActiveRecord::Migration[6.0]
  def change
    create_table :won_sets do |t|
      t.references :player, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
