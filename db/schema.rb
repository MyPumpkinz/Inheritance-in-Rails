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

ActiveRecord::Schema.define(version: 2022_05_22_062112) do

  create_table "contacts", force: :cascade do |t|
    t.integer "user_id"
    t.string "type"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "faculty"
    t.string "student_id_number"
    t.string "national_lecturer_identification_number"
    t.string "last_position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type", "user_id"], name: "index_contacts_on_type_and_user_id"
  end

  create_table "univs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website"
    t.string "country"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "univ_id"
  end

end
