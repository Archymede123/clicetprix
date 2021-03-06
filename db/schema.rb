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

ActiveRecord::Schema.define(version: 20180112173740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "pharmacy"
    t.string "email"
    t.string "phone"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.string "opening_times"
    t.string "url"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "street"
    t.string "zip_code"
    t.string "city"
    t.string "opening_times_second"
    t.string "opening_times_third"
    t.string "phone_number"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "image"
    t.string "content"
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
