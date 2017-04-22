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

ActiveRecord::Schema.define(version: 20170417031904) do

  create_table "hostels", force: :cascade do |t|
    t.string   "Hostel_name"
    t.string   "Hostel_address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "managers", force: :cascade do |t|
    t.integer  "hostel_id"
    t.string   "manager_name"
    t.string   "manager_address"
    t.string   "manager_phone_no"
    t.date     "Join_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["hostel_id"], name: "index_managers_on_hostel_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "Paid_amount"
    t.date     "Payment_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["student_id"], name: "index_payments_on_student_id"
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "hostel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hostel_id"], name: "index_seats_on_hostel_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "seat_id"
    t.string   "Student_name"
    t.string   "Institute"
    t.string   "Year"
    t.string   "Student_phone_no"
    t.string   "Address"
    t.string   "Guardians_name"
    t.string   "Guardians_phone_no"
    t.date     "Rent_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["seat_id"], name: "index_students_on_seat_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitors", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "Visitor_name"
    t.date     "Visiting_date"
    t.string   "Relation"
    t.string   "Visitor_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["student_id"], name: "index_visitors_on_student_id"
  end

end
