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

ActiveRecord::Schema.define(version: 20160331035136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.text     "title"
    t.text     "description"
    t.text     "location"
    t.integer  "portion"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "vegetarian",   default: false
    t.boolean  "availability", default: true
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "posts_id"
  end

  create_table "users", force: :cascade do |t|
    t.text     "firstname"
    t.text     "email"
    t.integer  "mobile"
    t.text     "password_digest"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

end
