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

ActiveRecord::Schema.define(version: 20170809235255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.bigint "artists_id"
    t.string "venue"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "notes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.index ["artists_id"], name: "index_events_on_artists_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.string "link"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_pictures_on_event_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "type"
    t.string "link"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_posts_on_event_id"
  end

  create_table "setlist_songs", force: :cascade do |t|
    t.bigint "songs_id"
    t.bigint "setlists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setlists_id"], name: "index_setlist_songs_on_setlists_id"
    t.index ["songs_id"], name: "index_setlist_songs_on_songs_id"
  end

  create_table "setlists", force: :cascade do |t|
    t.bigint "events_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["events_id"], name: "index_setlists_on_events_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.bigint "artists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_songs_on_artists_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "city"
    t.string "state"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
