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

ActiveRecord::Schema.define(version: 2019_06_24_112059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "clothes_type"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "photo"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "outfits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item1_id"
    t.bigint "item2_id"
    t.bigint "item3_id"
    t.bigint "item4_id"
    t.bigint "item5_id"
    t.index ["item1_id"], name: "index_outfits_on_item1_id"
    t.index ["item2_id"], name: "index_outfits_on_item2_id"
    t.index ["item3_id"], name: "index_outfits_on_item3_id"
    t.index ["item4_id"], name: "index_outfits_on_item4_id"
    t.index ["item5_id"], name: "index_outfits_on_item5_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "outfits", "items", column: "item1_id"
  add_foreign_key "outfits", "items", column: "item2_id"
  add_foreign_key "outfits", "items", column: "item3_id"
  add_foreign_key "outfits", "items", column: "item4_id"
  add_foreign_key "outfits", "items", column: "item5_id"
end
