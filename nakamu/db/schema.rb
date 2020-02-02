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

ActiveRecord::Schema.define(version: 2020_02_02_103050) do

  create_table "quiz_types", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "score_type10s", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "t1_2010", default: 0
    t.integer "t2_2010", default: 0
    t.integer "t3_2010", default: 0
    t.integer "t4_2010", default: 0
    t.integer "t5_2010", default: 0
    t.integer "t6_2010", default: 0
    t.integer "t7_2010", default: 0
    t.integer "t8_2010", default: 0
    t.integer "t9_2010", default: 0
    t.integer "t10_2010", default: 0
    t.integer "t11_2010", default: 0
    t.integer "t1_2011", default: 0
    t.integer "t2_2011", default: 0
    t.integer "t3_2011", default: 0
    t.integer "t4_2011", default: 0
    t.integer "t5_2011", default: 0
    t.integer "t6_2011", default: 0
    t.integer "t7_2011", default: 0
    t.integer "t8_2011", default: 0
    t.integer "t9_2011", default: 0
    t.integer "t10_2011", default: 0
    t.integer "t11_2011", default: 0
    t.integer "t1_2012", default: 0
    t.integer "t2_2012", default: 0
    t.integer "t3_2012", default: 0
    t.integer "t4_2012", default: 0
    t.integer "t5_2012", default: 0
    t.integer "t6_2012", default: 0
    t.integer "t7_2012", default: 0
    t.integer "t8_2012", default: 0
    t.integer "t9_2012", default: 0
    t.integer "t10_2012", default: 0
    t.integer "t11_2012", default: 0
    t.integer "t1_2013", default: 0
    t.integer "t2_2013", default: 0
    t.integer "t3_2013", default: 0
    t.integer "t4_2013", default: 0
    t.integer "t5_2013", default: 0
    t.integer "t6_2013", default: 0
    t.integer "t7_2013", default: 0
    t.integer "t8_2013", default: 0
    t.integer "t9_2013", default: 0
    t.integer "t10_2013", default: 0
    t.integer "t11_2013", default: 0
    t.integer "t1_2014", default: 0
    t.integer "t2_2014", default: 0
    t.integer "t3_2014", default: 0
    t.integer "t4_2014", default: 0
    t.integer "t5_2014", default: 0
    t.integer "t6_2014", default: 0
    t.integer "t7_2014", default: 0
    t.integer "t8_2014", default: 0
    t.integer "t9_2014", default: 0
    t.integer "t10_2014", default: 0
    t.integer "t11_2014", default: 0
  end

  create_table "score_type15s", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "t1_2015", default: 0
    t.integer "t2_2015", default: 0
    t.integer "t3_2015", default: 0
    t.integer "t4_2015", default: 0
    t.integer "t5_2015", default: 0
    t.integer "t6_2015", default: 0
    t.integer "t7_2015", default: 0
    t.integer "t8_2015", default: 0
    t.integer "t9_2015", default: 0
    t.integer "t10_2015", default: 0
    t.integer "t11_2015", default: 0
    t.integer "t1_2016", default: 0
    t.integer "t2_2016", default: 0
    t.integer "t3_2016", default: 0
    t.integer "t4_2016", default: 0
    t.integer "t5_2016", default: 0
    t.integer "t6_2016", default: 0
    t.integer "t7_2016", default: 0
    t.integer "t8_2016", default: 0
    t.integer "t9_2016", default: 0
    t.integer "t10_2016", default: 0
    t.integer "t11_2016", default: 0
    t.integer "t1_2017", default: 0
    t.integer "t2_2017", default: 0
    t.integer "t3_2017", default: 0
    t.integer "t4_2017", default: 0
    t.integer "t5_2017", default: 0
    t.integer "t6_2017", default: 0
    t.integer "t7_2017", default: 0
    t.integer "t8_2017", default: 0
    t.integer "t9_2017", default: 0
    t.integer "t10_2017", default: 0
    t.integer "t11_2017", default: 0
    t.integer "t1_2018", default: 0
    t.integer "t2_2018", default: 0
    t.integer "t3_2018", default: 0
    t.integer "t4_2018", default: 0
    t.integer "t5_2018", default: 0
    t.integer "t6_2018", default: 0
    t.integer "t7_2018", default: 0
    t.integer "t8_2018", default: 0
    t.integer "t9_2018", default: 0
    t.integer "t10_2018", default: 0
    t.integer "t11_2018", default: 0
    t.integer "t1_2019", default: 0
    t.integer "t2_2019", default: 0
    t.integer "t3_2019", default: 0
    t.integer "t4_2019", default: 0
    t.integer "t5_2019", default: 0
    t.integer "t6_2019", default: 0
    t.integer "t7_2019", default: 0
    t.integer "t8_2019", default: 0
    t.integer "t9_2019", default: 0
    t.integer "t10_2019", default: 0
    t.integer "t11_2019", default: 0
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
    t.integer "y2018_10", default: 0
    t.integer "y2018_20", default: 0
    t.integer "y2018_30", default: 0
    t.integer "y2018_40", default: 0
    t.integer "y2018_50", default: 0
    t.integer "y2018_all", default: 0
    t.integer "y2017_10", default: 0
    t.integer "y2017_20", default: 0
    t.integer "y2017_30", default: 0
    t.integer "y2017_40", default: 0
    t.integer "y2017_50", default: 0
    t.integer "y2017_all", default: 0
    t.integer "y2016_10", default: 0
    t.integer "y2016_20", default: 0
    t.integer "y2016_30", default: 0
    t.integer "y2016_40", default: 0
    t.integer "y2016_50", default: 0
    t.integer "y2016_all", default: 0
    t.integer "y2015_10", default: 0
    t.integer "y2015_20", default: 0
    t.integer "y2015_30", default: 0
    t.integer "y2015_40", default: 0
    t.integer "y2015_50", default: 0
    t.integer "y2015_all", default: 0
    t.integer "y2014_10", default: 0
    t.integer "y2014_20", default: 0
    t.integer "y2014_30", default: 0
    t.integer "y2014_40", default: 0
    t.integer "y2014_50", default: 0
    t.integer "y2014_all", default: 0
    t.integer "y2013_10", default: 0
    t.integer "y2013_20", default: 0
    t.integer "y2013_30", default: 0
    t.integer "y2013_40", default: 0
    t.integer "y2013_50", default: 0
    t.integer "y2013_all", default: 0
    t.integer "y2012_10", default: 0
    t.integer "y2012_20", default: 0
    t.integer "y2012_30", default: 0
    t.integer "y2012_40", default: 0
    t.integer "y2012_50", default: 0
    t.integer "y2012_all", default: 0
    t.integer "y2011_10", default: 0
    t.integer "y2011_20", default: 0
    t.integer "y2011_30", default: 0
    t.integer "y2011_40", default: 0
    t.integer "y2011_50", default: 0
    t.integer "y2011_all", default: 0
    t.integer "y2010_10", default: 0
    t.integer "y2010_20", default: 0
    t.integer "y2010_30", default: 0
    t.integer "y2010_40", default: 0
    t.integer "y2010_50", default: 0
    t.integer "y2010_all", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
