# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_06_124634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "sets"
    t.integer "legs"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_type"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "average", default: 0.0
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "score"
    t.bigint "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_scores_on_player_id"
  end

  create_table "winners", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_winners_on_game_id"
    t.index ["player_id"], name: "index_winners_on_player_id"
  end

  create_table "won_legs", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_won_legs_on_game_id"
    t.index ["player_id"], name: "index_won_legs_on_player_id"
  end

  create_table "won_sets", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_won_sets_on_game_id"
    t.index ["player_id"], name: "index_won_sets_on_player_id"
  end

  add_foreign_key "players", "games"
  add_foreign_key "scores", "players"
  add_foreign_key "winners", "games"
  add_foreign_key "winners", "players"
  add_foreign_key "won_legs", "games"
  add_foreign_key "won_legs", "players"
  add_foreign_key "won_sets", "games"
  add_foreign_key "won_sets", "players"
end
