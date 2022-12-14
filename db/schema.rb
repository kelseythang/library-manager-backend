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

ActiveRecord::Schema.define(version: 2022_11_20_200112) do

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.boolean "is_checked_out"
    t.integer "isbn"
    t.integer "author_id"
    t.integer "genre_id"
  end

  create_table "checkouts", force: :cascade do |t|
    t.integer "book_id"
    t.integer "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "members", force: :cascade do |t|
    t.integer "library_card_number"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.decimal "fines"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer "book_id"
    t.integer "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
