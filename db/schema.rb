# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_08_153114) do
  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "genre"
    t.string "poster"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.text "plot"
    t.boolean "response"
    t.integer "rating"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.boolean "status"
    t.string "archive"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

end
