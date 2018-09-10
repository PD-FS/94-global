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

ActiveRecord::Schema.define(version: 2018_09_10_024548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blood_types", force: :cascade do |t|
    t.string "group"
    t.string "rh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.decimal "altitude"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "flag"
    t.text "shape"
    t.bigint "department_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_cities_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.decimal "code"
    t.decimal "area"
    t.text "shape"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "district_areas", force: :cascade do |t|
    t.string "name"
    t.integer "initialZipCode"
    t.integer "lastZipCode"
    t.decimal "surfaceArea"
    t.decimal "population"
    t.decimal "density"
    t.text "shape"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_district_areas_on_city_id"
  end

  create_table "document_types", force: :cascade do |t|
    t.string "longname"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.integer "upz"
    t.text "shape"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "district_area_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_area_id"], name: "index_neighborhoods_on_district_area_id"
  end

  create_table "upzs", force: :cascade do |t|
    t.string "name"
    t.bigint "district_area_id"
    t.text "shape"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_area_id"], name: "index_upzs_on_district_area_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.date "birthday"
    t.string "email"
    t.string "password"
    t.bigint "gender_id"
    t.bigint "document_type_id"
    t.string "documentNumber"
    t.string "phone"
    t.string "cellphone"
    t.integer "civicoins"
    t.bigint "blood_type_id"
    t.string "address"
    t.string "nationality"
    t.string "secondaryNationality"
    t.string "pictureLarge"
    t.string "pictureMedium"
    t.string "pictureThumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blood_type_id"], name: "index_users_on_blood_type_id"
    t.index ["document_type_id"], name: "index_users_on_document_type_id"
    t.index ["gender_id"], name: "index_users_on_gender_id"
  end

  add_foreign_key "cities", "departments"
  add_foreign_key "district_areas", "cities"
  add_foreign_key "neighborhoods", "district_areas"
  add_foreign_key "upzs", "district_areas"
  add_foreign_key "users", "blood_types"
  add_foreign_key "users", "document_types"
  add_foreign_key "users", "genders"
end
