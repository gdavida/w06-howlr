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

ActiveRecord::Schema.define(version: 3) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "howlbacks", force: :cascade do |t|
    t.integer "howl_id",            null: false
    t.integer "wolf_id",            null: false
    t.string  "response_image_url"
    t.integer "likes"
    t.string  "message"
  end

  create_table "howls", force: :cascade do |t|
    t.string  "howl",            null: false
    t.integer "wolf_id",         null: false
    t.string  "share_image_url"
    t.integer "likes"
  end

  create_table "wolves", force: :cascade do |t|
    t.string "name",        null: false
    t.string "picture_url", null: false
    t.string "caption",     null: false
  end

end
