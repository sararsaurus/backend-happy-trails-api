
ActiveRecord::Schema[7.0].define(version: 2023_01_02_185523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.string "trail_condition"
    t.integer "temp"
    t.string "forecast"
    t.time "sunrise_time"
    t.time "sunset_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fast_facts", force: :cascade do |t|
    t.text "general"
    t.text "nearby_landmarks"
    t.string "lake_info"
    t.string "backcountry_zones"
    t.string "ecological_zones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hike_schedules", force: :cascade do |t|
    t.integer "trail_id"
    t.integer "user_id"
    t.date "date"
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
  end

end
