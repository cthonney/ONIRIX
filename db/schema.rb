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

ActiveRecord::Schema[7.0].define(version: 2023_05_07_003310) do
  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dreamlogs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_dreamlogs_on_user_id"
  end

  create_table "dreams", force: :cascade do |t|
    t.integer "dreamlog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "maincharacter"
    t.string "location"
    t.string "action"
    t.text "description"
    t.string "emotion"
    t.index ["dreamlog_id"], name: "index_dreams_on_dreamlog_id"
  end

  create_table "interpretations", force: :cascade do |t|
    t.integer "dream_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.index ["dream_id"], name: "index_interpretations_on_dream_id"
  end

  create_table "personal_details", force: :cascade do |t|
    t.string "occupation"
    t.string "gender"
    t.string "lovesituation"
    t.string "age"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personal_details_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dreamlogs", "users"
  add_foreign_key "dreams", "dreamlogs"
  add_foreign_key "interpretations", "dreams"
  add_foreign_key "personal_details", "users"
end
