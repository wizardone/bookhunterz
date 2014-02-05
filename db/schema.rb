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

ActiveRecord::Schema.define(version: 20140205092822) do

  create_table "book_authors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "aka"
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

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.string   "email"
    t.string   "ip_address"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
