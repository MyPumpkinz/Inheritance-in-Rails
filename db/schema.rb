ActiveRecord::Schema.define(version: 2022_05_22_143010) do

  create_table "contacts", force: :cascade do |t|
    t.integer "user_id"
    t.string "type"
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.string "faculty"
    t.integer "student_id_number"
    t.integer "national_lecturer_identification_number"
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
