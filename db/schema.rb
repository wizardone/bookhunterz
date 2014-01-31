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

ActiveRecord::Schema.define(version: 20140131140643) do

  create_table "book_authors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "aka"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_comments", force: true do |t|
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_news", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "book_reviews", force: true do |t|
    t.string   "book_name"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.decimal  "score",      precision: 2, scale: 1
  end

  create_table "book_scores", force: true do |t|
    t.string   "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comment_users", force: true do |t|
    t.string  "email"
    t.string  "ip_address"
    t.boolean "damage"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
