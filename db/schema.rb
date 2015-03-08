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

ActiveRecord::Schema.define(version: 20150308103335) do

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "pill_id"
    t.text     "comment"
    t.datetime "time_after_pill_taken"
    t.integer  "rating"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "lastname"
    t.string   "username"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pill_usages", force: :cascade do |t|
    t.integer  "pill_id"
    t.integer  "pill_taken"
    t.text     "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pills", force: :cascade do |t|
    t.string   "name"
    t.integer  "dosage"
    t.integer  "get_feedback_after"
    t.float    "empty_bottle_weight"
    t.integer  "patient_id"
    t.integer  "total_left"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.float    "pill_weight"
    t.boolean  "taken",               default: false
  end

  create_table "reminders", force: :cascade do |t|
    t.integer  "pill_id"
    t.integer  "remind_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
