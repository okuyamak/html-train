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

ActiveRecord::Schema.define(version: 2020_01_18_051803) do

  create_table "quiz_years", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "miss2019", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2018", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2017", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2016", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2015", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2014", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2013", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2012", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2011", default: "11111111111111111111111111111111111111111111111111"
    t.string "miss2010", default: "11111111111111111111111111111111111111111111111111"
  end

  create_table "score_years", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "y2019_10", default: 0
    t.integer "y2019_20", default: 0
    t.integer "y2019_30", default: 0
    t.integer "y2019_40", default: 0
    t.integer "y2019_50", default: 0
    t.integer "y2019_all", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
