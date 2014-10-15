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

ActiveRecord::Schema.define(version: 20141015011928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: true do |t|
    t.integer  "podcast_id"
    t.text     "title"
    t.text     "subtitle"
    t.text     "summary"
    t.text     "image_url"
    t.text     "file_url"
    t.text     "file_size"
    t.text     "file_duration"
    t.datetime "publication_date"
  end

  create_table "podcasts", force: true do |t|
    t.text "title"
    t.text "link"
    t.text "language"
    t.text "copyright"
    t.text "subtitle"
    t.text "author"
    t.text "summary"
    t.text "description"
    t.text "owner_name"
    t.text "owner_email"
    t.text "logo_url"
    t.text "category"
  end

end
