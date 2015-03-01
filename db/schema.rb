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

ActiveRecord::Schema.define(version: 20150301203129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "text",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "number",      null: false
    t.string   "text",        null: false
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educational_objectives", force: true do |t|
    t.string   "text"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educational_objectives_outcomes", id: false, force: true do |t|
    t.integer "outcome_id"
    t.integer "educational_objective_id", null: false
  end

  add_index "educational_objectives_outcomes", ["educational_objective_id"], name: "educational_obj_id", using: :btree

  create_table "grade_counts", force: true do |t|
    t.integer  "scheduled_course_id"
    t.integer  "a"
    t.integer  "b"
    t.integer  "c"
    t.integer  "d"
    t.integer  "f"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outcomes", force: true do |t|
    t.string   "text",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pre_assessments", force: true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pre_scores", force: true do |t|
    t.integer  "scheduled_course_id"
    t.integer  "pre_assessment_id"
    t.decimal  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pre_scores", ["pre_assessment_id"], name: "index_pre_scores_on_pre_assessment_id", using: :btree
  add_index "pre_scores", ["scheduled_course_id"], name: "index_pre_scores_on_scheduled_course_id", using: :btree

  create_table "scheduled_courses", force: true do |t|
    t.integer  "course_id",    null: false
    t.string   "semester",     null: false
    t.integer  "year",         null: false
    t.string   "teacher"
    t.integer  "num_students"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.integer  "scheduled_course_id", null: false
    t.integer  "outcome_id",          null: false
    t.decimal  "score",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
