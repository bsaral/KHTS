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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130312232144) do

  create_table "lessons", :force => true do |t|
    t.string   "eyt"
    t.string   "sky"
    t.string   "tg"
    t.string   "ebh"
    t.string   "elt"
    t.string   "ilt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "unites", :force => true do |t|
    t.string   "u_eyt"
    t.string   "u_sky"
    t.string   "u_tg"
    t.string   "u_ebh"
    t.string   "u_elt"
    t.string   "u_ilt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uploads", :force => true do |t|
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "username"
    t.integer  "user_id"
    t.string   "part"
    t.string   "lesson"
    t.string   "unite"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "role"
  end

end
