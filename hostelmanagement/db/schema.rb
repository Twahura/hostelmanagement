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

ActiveRecord::Schema.define(version: 20170409152816) do

  create_table "hostels", force: :cascade do |t|
    t.string   "hostel_name"
    t.string   "hostel_address"
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
