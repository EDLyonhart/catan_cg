# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170305015350) do

  create_table "cards", force: :cascade do |t|
    t.integer  "expansion_stack_id"
    t.integer  "event_stack_id"
    t.integer  "resource_stack_id"
    t.integer  "discard_stack_id"
    t.integer  "player_id"
    t.string   "front_image"
    t.string   "back_image"
    t.boolean  "discarded"
    t.boolean  "in_play"
    t.boolean  "is_playable"
    t.string   "type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "discard_stacks", force: :cascade do |t|
    t.text     "card_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_stacks", force: :cascade do |t|
    t.text     "card_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expansion_stacks", force: :cascade do |t|
    t.text     "card_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gameboards", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "remaining_settlements"
    t.integer  "remaining_cities"
    t.integer  "remaining_roads"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "games", force: :cascade do |t|
    t.boolean  "is_finished"
    t.integer  "current_turn"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hands", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "hand_limit"
    t.text     "card_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "victory_points"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "principalities", force: :cascade do |t|
    t.integer  "gameboard_id"
    t.text     "layout"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "player_id"
  end

  create_table "resource_stacks", force: :cascade do |t|
    t.text     "card_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer  "number"
    t.string   "phase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "games_played"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
