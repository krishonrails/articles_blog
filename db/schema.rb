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

ActiveRecord::Schema.define(version: 20140909033017) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bells", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bells", ["description"], name: "index_bells_on_description"

  create_table "categorization", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "order_id",   null: false
  end

  add_index "categorization", ["order_id"], name: "index_categorization_on_order_id"
  add_index "categorization", ["product_id"], name: "index_categorization_on_product_id"

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "orders", force: true do |t|
    t.decimal  "subtotal",   precision: 11, scale: 2
    t.decimal  "tax",        precision: 11, scale: 2
    t.decimal  "shipping",   precision: 11, scale: 2
    t.decimal  "total",      precision: 11, scale: 2
    t.integer  "status",                              default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_products", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "order_id",   null: false
  end

  create_table "products", force: true do |t|
    t.string   "first_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "part_number"
    t.string   "price"
    t.decimal  "price3",           precision: 5, scale: 2
    t.string   "description_long"
    t.string   "part_no"
    t.string   "myname"
    t.integer  "orders_id"
  end

  add_index "products", ["part_no"], name: "index_products_on_part_no"

  create_table "products3", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products3", ["name"], name: "index_products3_on_name"

  create_table "things", id: false, force: true do |t|
    t.string   "status"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
