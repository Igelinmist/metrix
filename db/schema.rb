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

ActiveRecord::Schema.define(version: 20140321055318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assemblies", force: true do |t|
    t.integer "plant_id"
    t.string  "name"
    t.text    "params"
  end

  create_table "meters", force: true do |t|
    t.string  "accuracy_class"
    t.string  "serial_number"
    t.date    "primary_verification_date"
    t.integer "assembly_id"
  end

  create_table "scans", force: true do |t|
    t.string   "descr"
    t.string   "path"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_jobs", force: true do |t|
    t.string   "doc_num"
    t.date     "serv_date"
    t.date     "valid_to"
    t.string   "serv_firm"
    t.text     "descr"
    t.integer  "meter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
