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

ActiveRecord::Schema.define(version: 2020_09_29_214219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_halls", force: :cascade do |t|
    t.string "name"
    t.integer "ibge_code"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_city_halls_on_user_id"
  end

  create_table "personal_data", force: :cascade do |t|
    t.string "iptu"
    t.string "scholar_attendancy"
    t.string "health_information"
    t.string "licence"
    t.string "social_assistancy"
    t.string "contract"
    t.string "public_security"
    t.string "traffic"
    t.string "construction"
    t.bigint "user_id"
    t.bigint "city_hall_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_hall_id"], name: "index_personal_data_on_city_hall_id"
    t.index ["user_id"], name: "index_personal_data_on_user_id"
  end

  create_table "requisitions", force: :cascade do |t|
    t.string "status"
    t.bigint "users_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_requisitions_on_users_id"
  end

  create_table "requition_fields", force: :cascade do |t|
    t.string "field_name"
    t.string "new_value"
    t.boolean "excluded"
    t.string "justification"
    t.bigint "requisition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["requisition_id"], name: "index_requition_fields_on_requisition_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cpf"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
