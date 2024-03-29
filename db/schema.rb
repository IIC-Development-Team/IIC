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

ActiveRecord::Schema[7.0].define(version: 2023_04_26_130843) do
  create_table "applications", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.date "rd"
    t.string "ca"
    t.boolean "cs"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "size"
    t.integer "app_type"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_apps", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.date "rd"
    t.string "ca"
    t.boolean "cs"
    t.string "img"
    t.float "size"
    t.integer "app_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usrs", force: :cascade do |t|
    t.string "browser"
    t.string "os"
    t.string "dev_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.string "coin_ico"
    t.string "wallet_qr"
    t.string "wallet_txt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
