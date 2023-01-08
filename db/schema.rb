# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_08_193121) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.string "trail_condition"
    t.integer "temp"
    t.string "forecast"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trail_id"
    t.integer "sunrise_time"
    t.integer "sunset_time"
  end

  create_table "fast_facts", force: :cascade do |t|
    t.text "general"
    t.text "nearby_landmarks"
    t.string "lake_info"
    t.string "backcountry_zones"
    t.string "ecological_zones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trail_id"
  end

  create_table "forecasts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hike_schedules", force: :cascade do |t|
    t.integer "trail_id"
    t.integer "user_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "lights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "length"
    t.string "difficulty"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

end
