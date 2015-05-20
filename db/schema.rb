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

ActiveRecord::Schema.define(version: 20150403183636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "diets", force: true do |t|
    t.boolean  "fecal_incontinence"
    t.boolean  "hemacromotosis"
    t.boolean  "celiac"
    t.boolean  "irritable_colon"
    t.boolean  "pregnancy"
    t.boolean  "ovolact"
    t.boolean  "kosher"
    t.boolean  "without_fibers"
    t.boolean  "allowed_foods"
    t.integer  "breakfast_fruits"
    t.integer  "breakfast_lacteals"
    t.integer  "breakfast_starch"
    t.integer  "collation_fruits"
    t.integer  "collation_lacteals"
    t.integer  "collation_starch"
    t.integer  "lunch_starch"
    t.integer  "lunch_vegetables"
    t.integer  "luch_fats"
    t.integer  "lunch_fruits"
    t.integer  "lunch_lacteals"
    t.integer  "lunch_meats"
    t.integer  "dinner_starch"
    t.integer  "dinner_vegetables"
    t.integer  "dinner_fats"
    t.integer  "dinner_fruits"
    t.integer  "dinner_lacteals"
    t.integer  "dinner_meats"
    t.integer  "merienda_fruits"
    t.integer  "merienda_lacteals"
    t.integer  "merienda_starch"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "social_security"
    t.string   "social_security_plan"
    t.string   "social_security_number"
    t.string   "marital_status"
    t.date     "birhtday"
    t.string   "profesion"
    t.string   "sex"
    t.integer  "job_hs"
    t.string   "job_type"
    t.decimal  "weight_max"
    t.decimal  "weight_min"
    t.decimal  "weight_avg"
    t.decimal  "weight_now"
    t.decimal  "weight_exp"
    t.text     "objective"
    t.string   "family"
    t.string   "cooks"
    t.string   "buys"
    t.string   "allergies"
    t.boolean  "kosher"
    t.boolean  "vegetarian"
    t.boolean  "ovolacto"
    t.boolean  "lacto"
    t.boolean  "pork"
    t.boolean  "meat"
    t.boolean  "chicken"
    t.boolean  "fish"
    t.boolean  "celiac"
    t.boolean  "swallowing"
    t.boolean  "mastication"
    t.boolean  "nausea"
    t.boolean  "diarrhea"
    t.boolean  "vomits"
    t.boolean  "constipation"
    t.boolean  "anemia"
    t.boolean  "hypertension"
    t.boolean  "diabetes"
    t.boolean  "heart_problems"
    t.boolean  "overweight"
    t.boolean  "cholesterol"
    t.boolean  "bulimia"
    t.boolean  "anorexia"
    t.boolean  "cancer"
    t.string   "cancer_type"
    t.string   "illness_other"
    t.boolean  "smoker"
    t.string   "smoker_amount"
    t.string   "medication"
    t.integer  "wrist_size"
    t.decimal  "height"
    t.string   "vitamins"
    t.string   "sport1"
    t.integer  "sport1_frecuency"
    t.string   "sport2"
    t.integer  "sport2_frecuency"
    t.string   "sport3"
    t.integer  "sport3_frecuency"
    t.date     "menstruation"
    t.string   "how_meet"
    t.text     "comments"
    t.boolean  "intestinal_diseases"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
