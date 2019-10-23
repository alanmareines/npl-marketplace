# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_22_184829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.float "value"
    t.boolean "winner", default: false
    t.bigint "user_id"
    t.bigint "npl_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["npl_id"], name: "index_bids_on_npl_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "npls", force: :cascade do |t|
    t.float "book_value"
    t.string "debtor"
    t.date "maturity_date"
    t.text "collateral_description"
    t.float "min_value"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "npl_type"
    t.string "document"
    t.index ["user_id"], name: "index_npls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.bigint "cpf_cnpj"
    t.bigint "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bids", "npls"
  add_foreign_key "bids", "users"
  add_foreign_key "npls", "users"
end
