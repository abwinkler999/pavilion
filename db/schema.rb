# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150227172024) do

  create_table "adults", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone"
    t.boolean  "cpr"
    t.boolean  "first_aid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "halfweek",     default: false
    t.integer  "tshirt_id"
    t.string   "troopnumber"
    t.string   "troopcontact"
    t.string   "dietary"
    t.boolean  "no_gluten"
  end

  create_table "girls", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "dob"
    t.integer  "level_id"
    t.string   "dietary"
    t.boolean  "no_gluten"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "medications"
    t.string   "fallgrade"
    t.string   "parentcell"
    t.string   "othercell"
    t.string   "troopnumber"
    t.integer  "tshirt_id"
    t.integer  "session_A_id"
    t.integer  "session_B_id"
    t.integer  "session_C_id"
    t.integer  "session_D_id"
    t.string   "cooking_session"
    t.boolean  "high_ropes"
  end

  create_table "girls_sessions", id: false, force: true do |t|
    t.integer "girl_id",    null: false
    t.integer "session_id", null: false
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restrictions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "name"
    t.integer  "slot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slots", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tshirts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
    t.boolean  "attending",              default: false
    t.integer  "adult_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
