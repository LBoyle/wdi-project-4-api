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

ActiveRecord::Schema.define(version: 20170602143526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.text "spec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts_parttypes", id: false, force: :cascade do |t|
    t.bigint "part_id", null: false
    t.bigint "parttype_id", null: false
  end

  create_table "parts_rigs", id: false, force: :cascade do |t|
    t.bigint "rig_id", null: false
    t.bigint "part_id", null: false
  end

  create_table "parttypes", force: :cascade do |t|
    t.string "parttype"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rigs", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rigs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rank"
  end

  add_foreign_key "rigs", "users"
end
