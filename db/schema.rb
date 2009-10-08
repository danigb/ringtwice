# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091008011910) do

  create_table "gateways", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.string   "protocol"
    t.string   "host"
    t.integer  "port"
    t.string   "user"
    t.string   "password"
    t.string   "auth"
    t.string   "domain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mail_templates", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "processor"
    t.string   "charset"
    t.string   "content_type"
    t.string   "reply_to"
    t.string   "mime_version"
  end

  create_table "mails", :force => true do |t|
    t.string   "state"
    t.string   "description"
    t.string   "reference"
    t.integer  "project_id"
    t.integer  "group_id"
    t.integer  "gateway_id"
    t.integer  "mail_template_id"
    t.integer  "user_id"
    t.string   "from"
    t.string   "cc"
    t.string   "bcc"
    t.string   "subject"
    t.text     "body"
    t.string   "charset"
    t.string   "content_type"
    t.string   "reply_to"
    t.string   "headers"
    t.string   "mime_version"
    t.datetime "last_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
