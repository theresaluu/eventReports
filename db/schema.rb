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

ActiveRecord::Schema.define(version: 20150224061929) do

  create_table "events", force: true do |t|
    t.integer  "fetch_id"
    t.integer  "report_id"
    t.datetime "date"
    t.string   "push_event"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["fetch_id"], name: "index_events_on_fetch_id"
  add_index "events", ["report_id"], name: "index_events_on_report_id"

  create_table "fetches", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
