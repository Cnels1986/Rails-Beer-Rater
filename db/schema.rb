ActiveRecord::Schema.define(version: 20180226194426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.bigint "brewery_id"
    t.bigint "location_id"
    t.string "beer_type"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brewery_id"], name: "index_beers_on_brewery_id"
    t.index ["location_id"], name: "index_beers_on_location_id"
    t.index ["user_id"], name: "index_beers_on_user_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "rember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "beers", "breweries"
  add_foreign_key "beers", "locations"
  add_foreign_key "beers", "users"
end
