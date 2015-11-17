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

ActiveRecord::Schema.define(version: 20151117082028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "message"
    t.string   "rating"
    t.integer  "user_id"
    t.integer  "tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["tour_id"], name: "index_comments_on_tour_id", using: :btree
  add_index "comments", ["user_id", "tour_id"], name: "index_comments_on_user_id_and_tour_id", using: :btree

  create_table "tours", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "state"
    t.text     "country"
    t.string   "difficulty"
    t.string   "surface"
    t.float    "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_location"
    t.string   "finish_location"
    t.integer  "user_id"
    t.float    "latitude_start"
    t.float    "longitude_start"
    t.float    "latitude_finish"
    t.float    "longitude_finish"
  end

  add_index "tours", ["user_id"], name: "index_tours_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
