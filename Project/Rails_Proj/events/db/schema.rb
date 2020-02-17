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

ActiveRecord::Schema.define(version: 2020_02_15_071116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_types", force: :cascade do |t|
    t.text "type_"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cost"
  end

  create_table "events", force: :cascade do |t|
    t.text "name"
    t.date "date"
    t.bigint "event_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name", null: false
    t.text "last_name"
    t.string "email"
    t.integer "age"
    t.string "gender"
    t.decimal "salary"
    t.bigint "role_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.bigint "phone"
    t.string "email_confirmation"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "events", "users"
end
