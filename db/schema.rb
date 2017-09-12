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

ActiveRecord::Schema.define(version: 20170912211120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "due_dates", force: :cascade do |t|
    t.datetime "date"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_due_dates_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "rank"
    t.boolean "completed"
    t.boolean "visible"
    t.boolean "starred"
    t.bigint "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_items_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.integer "rank"
    t.bigint "master_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_list_id"], name: "index_lists_on_master_list_id"
  end

  create_table "master_lists", force: :cascade do |t|
    t.string "listname"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_notes_on_item_id"
  end

  create_table "subtasks", force: :cascade do |t|
    t.string "name"
    t.integer "rank"
    t.boolean "completed"
    t.boolean "visible"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_subtasks_on_item_id"
  end

  add_foreign_key "due_dates", "items"
  add_foreign_key "items", "lists"
  add_foreign_key "lists", "master_lists"
  add_foreign_key "notes", "items"
  add_foreign_key "subtasks", "items"
end
