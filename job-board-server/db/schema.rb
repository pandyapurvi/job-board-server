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

ActiveRecord::Schema.define(version: 2019_05_27_112113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer "job_id"
    t.integer "seeker_id"
    t.text "name"
    t.text "resume"
    t.text "cover_letter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.text "company_name"
    t.text "compamy_type"
    t.text "size"
    t.integer "no_employee"
    t.text "description"
    t.text "city"
    t.text "website"
    t.text "vacancy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.text "title"
    t.date "pod"
    t.text "description"
    t.text "level"
    t.text "company_type"
    t.integer "salary"
    t.text "duration"
    t.date "cod"
    t.text "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employer_id"
  end

  create_table "seekers", force: :cascade do |t|
    t.text "name"
    t.text "emailid"
    t.integer "pnone"
    t.text "social_link"
    t.text "resume"
    t.text "cover_letter"
    t.integer "experience_year"
    t.text "notice"
    t.text "current_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.boolean "employer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
