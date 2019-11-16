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

ActiveRecord::Schema.define(version: 2019_11_16_150622) do

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

  create_table "due_diligences", force: :cascade do |t|
    t.boolean "book_value_valid"
    t.boolean "npl_type_valid"
    t.boolean "debtor_valid"
    t.boolean "maturity_date_valid"
    t.boolean "collateral_description_valid"
    t.boolean "guarantor_valid"
    t.bigint "npl_id"
    t.text "contract_document", default: [], array: true
    t.text "collateral_document", default: [], array: true
    t.text "other_document", default: [], array: true
    t.text "legal_opinion"
    t.string "api_info"
    t.boolean "finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["npl_id"], name: "index_due_diligences_on_npl_id"
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
    t.date "auction_date"
    t.boolean "auctioned", default: false
    t.boolean "due_diligence"
    t.string "guarantor_name"
    t.string "guarantor_cnpj"
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
    t.boolean "admin", default: false
    t.boolean "lawyer", default: false
    t.boolean "servicer", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bids", "npls"
  add_foreign_key "bids", "users"
  add_foreign_key "due_diligences", "npls"
  add_foreign_key "npls", "users"
end
