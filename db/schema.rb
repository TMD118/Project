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

ActiveRecord::Schema.define(version: 20160321203258) do

  create_table "appointments", force: :cascade do |t|
    t.string   "prefferedInstitution"
    t.string   "prefferedDoctor"
    t.datetime "fromDate"
    t.datetime "toDate"
    t.time     "prefferedTime"
    t.text     "detailsOfAilment"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sign_in_ones", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sign_in_twos", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "doctorID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sign_up_ones", force: :cascade do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "phoneno"
    t.string   "cellno"
    t.string   "city"
    t.datetime "dateofbirth"
    t.string   "password"
    t.string   "confirmpassword"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sign_up_twos", force: :cascade do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "username"
    t.integer  "PMDCno"
    t.string   "email"
    t.string   "phoneno"
    t.string   "cellno"
    t.datetime "dateofbirth"
    t.string   "password"
    t.string   "confirmpassword"
    t.string   "speciality"
    t.string   "city"
    t.string   "institution"
    t.time     "officehourstart"
    t.time     "officehourend"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
