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

ActiveRecord::Schema.define(version: 2020_09_30_212004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_halls", force: :cascade do |t|
    t.string "name"
    t.integer "ibge_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personal_data", force: :cascade do |t|
    t.string "datum_font"
    t.string "datum_information"
    t.string "datum_access"
    t.bigint "user_id"
    t.bigint "city_hall_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_hall_id"], name: "index_personal_data_on_city_hall_id"
    t.index ["user_id"], name: "index_personal_data_on_user_id"
  end

  create_table "requisitions", force: :cascade do |t|
    t.string "status"
    t.string "field_name"
    t.string "new_value"
    t.boolean "excluded"
    t.string "justification"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_requisitions_on_user_id"
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
    t.boolean "datum_admin", default: false
    t.bigint "city_hall_id"
    t.index ["city_hall_id"], name: "index_users_on_city_hall_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
