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

ActiveRecord::Schema.define(version: 20140820180057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
    t.integer  "delivery_id"
    t.integer  "lecture_id"
    t.string   "type"
    t.string   "file"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concepts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliveries", force: true do |t|
    t.integer  "unit_id"
    t.integer  "user_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.integer  "concept_id"
    t.integer  "quantity"
    t.text     "clarification"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: true do |t|
    t.integer  "unit_id"
    t.integer  "lecture_id"
    t.integer  "position"
    t.boolean  "core"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spots", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spots", ["student_id", "course_id"], name: "index_spots_on_student_id_and_course_id", unique: true, using: :btree

  create_table "units", force: true do |t|
    t.integer  "course_id"
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "photo"
    t.boolean  "admin"
    t.boolean  "student"
    t.boolean  "teacher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
