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

ActiveRecord::Schema.define(version: 2020_03_06_113311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "Start_date"
    t.date "End_date"
    t.bigint "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctor_id", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "qualifications"
    t.string "gender"
    t.integer "salary"
    t.string "email"
    t.bigint "mobile"
    t.integer "age"
    t.bigint "hospital_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
    t.string "confirm_password"
    t.string "comments"
    t.string "avatar"
    t.index ["hospital_id"], name: "index_doctors_on_hospital_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.text "Name"
    t.string "Address"
    t.string "State"
    t.integer "Beds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_hospitals_on_deleted_at"
  end

  create_table "medical_records", force: :cascade do |t|
    t.string "Problem"
    t.date "Date_of_examination"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.index ["doctor_id"], name: "index_medical_records_on_doctor_id"
    t.index ["patient_id"], name: "index_medical_records_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.text "First_Name"
    t.text "Last_Name"
    t.integer "age"
    t.string "Address"
    t.bigint "Mobile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Gender"
    t.bigint "hospital_id", null: false
    t.boolean "deleted", default: false
    t.index ["hospital_id"], name: "index_patients_on_hospital_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.bigint "combine_id"
    t.string "combine_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scaffold_commands", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "medical_records", "doctors"
  add_foreign_key "medical_records", "patients"
  add_foreign_key "patients", "hospitals"
end
