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

ActiveRecord::Schema.define(version: 20170504094920) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "country"
    t.string   "zip_code"
    t.string   "street"
    t.string   "number_add"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attachments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "number_doc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "delivery_date"
    t.date     "order_date"
    t.integer  "price"
    t.string   "status"
    t.text     "client_comment", limit: 65535
    t.text     "adm_comment",    limit: 65535
    t.string   "attachment"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "profile_id"
    t.index ["profile_id"], name: "index_orders_on_profile_id", using: :btree
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",         limit: 32, null: false
    t.integer  "account_type",            null: false
    t.string   "gender"
    t.date     "birth"
    t.string   "telephone"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "document_id"
    t.integer  "address_id"
    t.index ["address_id"], name: "index_profiles_on_address_id", using: :btree
    t.index ["document_id"], name: "index_profiles_on_document_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "profile_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["profile_id"], name: "index_users_on_profile_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
