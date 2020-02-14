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

ActiveRecord::Schema.define(version: 2020_02_14_092549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "Start_date"
    t.date "End_date"
    t.bigint "patients_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctors_id", null: false
    t.index ["doctors_id"], name: "index_appointments_on_doctors_id"
    t.index ["patients_id"], name: "index_appointments_on_patients_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "First_name"
    t.string "Last_name"
    t.text "Qualifications"
    t.string "Gender"
    t.integer "salary"
    t.string "email"
    t.integer "mobile"
    t.integer "age"
    t.bigint "hospitals_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hospitals_id"], name: "index_doctors_on_hospitals_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.text "Name"
    t.string "Address"
    t.string "State"
    t.integer "Beds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_records", force: :cascade do |t|
    t.string "Problem"
    t.date "Date_of_examination"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctors_id", null: false
    t.index ["doctors_id"], name: "index_medical_records_on_doctors_id"
  end

  create_table "patients", force: :cascade do |t|
    t.text "First_Name"
    t.text "Last_Name"
    t.string "Diagnosis"
    t.integer "age"
    t.string "Address"
    t.integer "Mobile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Gender"
    t.string "New_Name"
    t.bigint "hospital_id", null: false
    t.bigint "medical_records_id", null: false
    t.index ["hospital_id"], name: "index_patients_on_hospital_id"
    t.index ["medical_records_id"], name: "index_patients_on_medical_records_id"
  end

  add_foreign_key "appointments", "doctors", column: "doctors_id"
  add_foreign_key "medical_records", "doctors", column: "doctors_id"
  add_foreign_key "patients", "hospitals"
  add_foreign_key "patients", "medical_records", column: "medical_records_id"
end
