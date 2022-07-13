# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_13_184121) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anime_wheres", force: :cascade do |t|
    t.integer "anime_id"
    t.integer "where_to_watch_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes", force: :cascade do |t|
    t.string "name"
    t.integer "seasons"
    t.integer "episode"
    t.string "dub"
    t.string "image_url"
    t.text "description"
    t.integer "manga_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "anime_url"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "anime_id"
    t.integer "manga_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "manga_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manga_anime_genres", force: :cascade do |t|
    t.integer "manga_id"
    t.integer "anime_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manga_wheres", force: :cascade do |t|
    t.integer "manga_id"
    t.integer "where_to_read_id"
    t.string "url_manga"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mangas", force: :cascade do |t|
    t.string "name"
    t.integer "chapter"
    t.text "description"
    t.integer "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.string "manga_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "where_to_reads", force: :cascade do |t|
    t.string "reading_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "where_to_watches", force: :cascade do |t|
    t.string "streaming_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
