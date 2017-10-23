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

ActiveRecord::Schema.define(version: 20171017110225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date     "checkin"
    t.date     "checkout"
    t.integer  "extra_bed_required"
    t.string   "guest_email"
    t.string   "guest_phone"
    t.string   "guest_photo"
    t.string   "nights"
    t.integer  "listing_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "processed"
    t.integer  "status",             default: 0
    t.index ["listing_id"], name: "index_bookings_on_listing_id", using: :btree
  end

  create_table "cleaner_providers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "internal"
    t.string   "address"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_cleaner_providers_on_listing_id", using: :btree
  end

  create_table "cleaners", force: :cascade do |t|
    t.string   "email"
    t.boolean  "active"
    t.string   "name"
    t.string   "phone_number"
    t.integer  "rate"
    t.integer  "cleaner_provider_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["cleaner_provider_id"], name: "index_cleaners_on_cleaner_provider_id", using: :btree
  end

  create_table "leads", force: :cascade do |t|
    t.text     "address"
    t.boolean  "email_sent"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "referrer"
    t.date     "time_last_active"
    t.integer  "signup_stage"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "accomodates"
    t.text     "address"
    t.integer  "bathrooms"
    t.integer  "bedrooms"
    t.integer  "beds"
    t.integer  "bookings_count"
    t.text     "photo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "lead_id"
    t.index ["lead_id"], name: "index_listings_on_lead_id", using: :btree
  end

  add_foreign_key "bookings", "listings"
  add_foreign_key "cleaner_providers", "listings"
  add_foreign_key "cleaners", "cleaner_providers"
  add_foreign_key "listings", "leads"
end
