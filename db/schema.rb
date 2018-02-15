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

ActiveRecord::Schema.define(version: 20180214070455) do

  create_table "checkers", force: :cascade do |t|
    t.text "content"
    t.integer "game_id"
    t.bigint "tweet_id"
    t.datetime "tweeted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_checkers_on_game_id"
    t.index ["tweet_id"], name: "index_checkers_on_tweet_id", unique: true
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "account"
    t.string "eventname"
    t.boolean "default_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.integer "game_id"
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_keywords_on_game_id"
  end

end
