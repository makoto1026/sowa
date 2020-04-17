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

ActiveRecord::Schema.define(version: 2020_04_17_050129) do

  create_table "helps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "datetime", null: false
    t.string "place", null: false
    t.string "helpContent", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_helps_on_user_id"
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "datetime", null: false
    t.string "place", null: false
    t.bigint "user_id", null: false
    t.integer "taxi_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taxi_id"], name: "index_reservations_on_taxi_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_yomi", null: false
    t.string "last_name_yomi", null: false
    t.string "email", default: "", null: false
    t.string "password", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "postal_code", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "room"
    t.string "tel", null: false
    t.date "birthday", null: false
    t.integer "point"
    t.integer "rank_id", default: 1
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["first_name_yomi"], name: "index_users_on_first_name_yomi"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["last_name_yomi"], name: "index_users_on_last_name_yomi"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tel"], name: "index_users_on_tel", unique: true
  end

  add_foreign_key "helps", "users"
end
