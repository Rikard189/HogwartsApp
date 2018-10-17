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

ActiveRecord::Schema.define(version: 2018_10_11_194829) do

  create_table "colleges", force: :cascade do |t|
    t.string "name"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["university_id"], name: "index_colleges_on_university_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "key_code"
    t.integer "difficulty"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "deans", force: :cascade do |t|
    t.string "names"
    t.string "surnames"
    t.decimal "salary"
    t.date "birthday"
    t.boolean "float"
    t.integer "college_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_deans_on_college_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "professor_id"
    t.integer "college_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_departments_on_college_id"
    t.index ["professor_id"], name: "index_departments_on_professor_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "names"
    t.string "surnames"
    t.decimal "salary"
    t.string "academic_degree"
    t.boolean "buena_onda"
    t.boolean "is_chavorruco"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_professors_on_department_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "key_code"
    t.string "string"
    t.string "description"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
  end

  create_table "sections_students", force: :cascade do |t|
    t.integer "student_id"
    t.integer "section_id"
    t.index ["section_id"], name: "index_sections_students_on_section_id"
    t.index ["student_id"], name: "index_sections_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "names"
    t.string "surnames"
    t.string "enrollment"
    t.string "house"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_students_on_department_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
