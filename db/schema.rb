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

ActiveRecord::Schema.define(version: 20130905205623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "accounts", id: false, force: true do |t|
    t.uuid     "id",                       null: false
    t.string   "name"
    t.text     "address_1"
    t.text     "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.float    "fuel_royalties"
    t.float    "turnkey_royalties"
    t.float    "fuel_price"
    t.float    "annual_management_charge"
    t.float    "conversion_margin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fleets", id: false, force: true do |t|
    t.uuid     "id",                   null: false
    t.string   "name"
    t.integer  "quantity"
    t.uuid     "vehicle_type_id"
    t.float    "miles"
    t.float    "lifetime_miles"
    t.float    "mileage"
    t.float    "miles_per_year"
    t.float    "maintenance_per_mile"
    t.string   "pays_for_fuel"
    t.string   "pays_for_maintenance"
    t.float    "percent_propane"
    t.float    "resale_value"
    t.float    "conversion_cost"
    t.uuid     "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", id: false, force: true do |t|
    t.uuid     "id",            null: false
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "stations", id: false, force: true do |t|
    t.uuid     "id",               null: false
    t.string   "name"
    t.text     "address_1"
    t.text     "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.uuid     "account_id"
    t.boolean  "attended"
    t.float    "development_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: false, force: true do |t|
    t.uuid     "id",                                             null: false
    t.string   "name"
    t.string   "avatar_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "work_phone"
    t.string   "mobile_phone"
    t.string   "title"
    t.uuid     "account_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "invitation_token",       limit: 60
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.uuid "user_id"
    t.uuid "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "vehicle_types", id: false, force: true do |t|
    t.uuid     "id",              null: false
    t.string   "name"
    t.integer  "year"
    t.float    "miles"
    t.float    "lifetime_miles"
    t.float    "mileage"
    t.float    "miles_per_year"
    t.float    "resale_value"
    t.float    "conversion_cost"
    t.float    "propane_factor"
    t.float    "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
