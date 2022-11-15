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

ActiveRecord::Schema.define(version: 2022_11_14_003412) do

  create_table "books", force: :cascade do |t|
    t.string "image_url"
    t.string "title"
    t.string "author"
    t.text "genre"
    t.boolean "is_checked_out"
  end

  create_table "members", force: :cascade do |t|
    t.integer "library_card_number"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.string "address"
    t.text "history"
    t.integer "fines"
    t.integer "book_id"
  end

end
