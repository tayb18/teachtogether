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

ActiveRecord::Schema.define(version: 20160125192240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string  "body"
    t.string  "author"
    t.integer "forum_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string  "title"
    t.string  "body"
    t.string  "author"
    t.integer "network_id"
    t.integer "user_id"
  end

  create_table "lesson_plans", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "document_url"
    t.boolean  "is_public?"
    t.string   "author"
    t.string   "grade"
    t.string   "subject"
    t.string   "date_and_time"
    t.string   "standard"
    t.string   "objective"
    t.string   "essential_question"
    t.string   "assessment"
    t.string   "vocabulary"
    t.string   "introduction"
    t.string   "learning_plan"
    t.string   "material"
    t.string   "closing_summary"
    t.integer  "network_id"
  end

  create_table "networks", force: :cascade do |t|
    t.string  "network_name"
    t.integer "admin_id"
    t.string  "member_emails"
  end

  create_table "networks_users", id: false, force: :cascade do |t|
    t.integer "network_id"
    t.integer "user_id"
  end

  add_index "networks_users", ["network_id", "user_id"], name: "index_networks_users_on_network_id_and_user_id", using: :btree
  add_index "networks_users", ["user_id", "network_id"], name: "index_networks_users_on_user_id_and_network_id", using: :btree

  create_table "unit_plans", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "document_url"
    t.boolean  "is_public?"
    t.string   "author"
    t.string   "grade"
    t.string   "subject"
    t.string   "start"
    t.string   "description"
    t.string   "big_idea"
    t.string   "essential_question"
    t.string   "standard"
    t.string   "swbat"
    t.string   "formal_assessment"
    t.string   "informal_assessment"
    t.string   "key_vocabulary"
    t.string   "material"
    t.string   "ends"
    t.integer  "network_id"
  end

  create_table "user_mailers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
