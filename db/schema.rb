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

ActiveRecord::Schema.define(version: 20140324071108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assemblies", force: true do |t|
    t.integer "plant_id"
    t.string  "name"
    t.text    "params"
  end

  create_table "elcounter_attrs", force: true do |t|
    t.string   "connection_schema"
    t.integer  "year_of_production"
    t.string   "gost"
    t.integer  "elcounter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grsi_items", force: true do |t|
    t.string   "reestr_nmbr"
    t.string   "reestr_name"
    t.string   "reestr_type"
    t.string   "factory"
    t.string   "country"
    t.date     "valid_until"
    t.integer  "mpi_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meters", force: true do |t|
    t.string  "type"
    t.string  "accuracy_class"
    t.string  "serial_number"
    t.date    "primary_verification_date"
    t.integer "assembly_id"
    t.integer "grsi_item_id"
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

  create_table "voltage_transformer_attrs", force: true do |t|
    t.string   "transform_koef"
    t.float    "s_nom"
    t.float    "s_fact"
    t.float    "voltage_loses"
    t.string   "switchboards"
    t.integer  "voltage_transformer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
