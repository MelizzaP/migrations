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

ActiveRecord::Schema.define(version: 20150105220912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.integer "challenges_id"
    t.integer "groups_id"
  end

  create_table "challenges", force: true do |t|
    t.string "title"
    t.string "content"
  end

  create_table "classmates", force: true do |t|
    t.string  "hair_color"
    t.integer "age"
    t.string  "[:first_name, :last_name]"
    t.integer "ssn"
  end

  create_table "customers", force: true do |t|
    t.integer "product_id"
    t.decimal "total"
  end

  create_table "groups", force: true do |t|
    t.string "groupname"
  end

  create_table "mks_users", force: true do |t|
    t.string "username"
    t.string "email"
    t.string "password"
  end

  create_table "posts", force: true do |t|
    t.integer "users_id"
    t.string  "title"
    t.string  "content"
    t.boolean "flag"
  end

  create_table "products", force: true do |t|
    t.string  "description"
    t.decimal "price"
    t.integer "customers_id"
    t.integer "special_id"
  end

  create_table "responses", force: true do |t|
    t.integer "challenges_id"
    t.integer "mks_users_id"
    t.boolean "correct"
  end

  create_table "users", force: true do |t|
    t.string  "username"
    t.string  "email"
    t.string  "password"
    t.integer "zipcode"
  end

  create_table "users_groups", force: true do |t|
    t.integer "mks_users_id"
    t.integer "groups_id"
  end

end
