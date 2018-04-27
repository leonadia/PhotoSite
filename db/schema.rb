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

ActiveRecord::Schema.define(version: 20180410195006) do

  create_table "comments", force: :cascade do |t|
    t.integer "User_id"
    t.integer "Photo_id"
    t.string "date_time"
    t.string "comment_text"
    t.index ["Photo_id"], name: "index_comments_on_Photo_id"
    t.index ["User_id"], name: "index_comments_on_User_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "User_id"
    t.string "date_time"
    t.string "file_name"
    t.index ["User_id"], name: "index_photos_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

end
