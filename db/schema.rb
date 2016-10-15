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

ActiveRecord::Schema.define(version: 20161015145224) do

  create_table "tenants", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "subdomain",            limit: 50,                   null: false
    t.string   "tenant_name",          limit: 100,                  null: false
    t.string   "custom_domain",        limit: 100
    t.boolean  "is_active",                          default: true, null: false
    t.string   "favicon"
    t.text     "desktop",              limit: 65535
    t.text     "login",                limit: 65535
    t.text     "logo",                 limit: 65535
    t.text     "privacy_policy",       limit: 65535
    t.text     "terms_and_conditions", limit: 65535
    t.string   "footer_text"
    t.string   "support_number"
    t.string   "support_link"
    t.string   "support_email"
    t.string   "access_token",         limit: 20
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.index ["subdomain"], name: "index_tenants_on_subdomain", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                              default: "",    null: false
    t.string   "encrypted_password",                 default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                    default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name",             limit: 50,                  null: false
    t.string   "last_name",              limit: 50,                  null: false
    t.string   "gender",                 limit: 10
    t.string   "state"
    t.string   "city",                   limit: 50
    t.string   "country",                limit: 3
    t.string   "time_zone",              limit: 100
    t.boolean  "accepted_terms",                     default: false, null: false
    t.integer  "birth_day"
    t.integer  "birth_month"
    t.integer  "birth_year"
    t.string   "telephone_country_code", limit: 5,   default: "1"
    t.string   "telephone_area_code",    limit: 5
    t.string   "telephone_number",       limit: 20
    t.boolean  "is_admin",                           default: false, null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
