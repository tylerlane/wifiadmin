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

ActiveRecord::Schema.define(:version => 20081007194409) do

  create_table "disconnects", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "phone_number"
    t.integer  "billmax_acct"
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "completed_date"
    t.string   "completed_by",   :default => "Jay Fahnestock"
  end

  create_table "ips", :force => true do |t|
    t.string   "ip_address"
    t.string   "subnet"
    t.string   "mac_address"
    t.string   "name"
    t.string   "ssid"
    t.string   "channel"
    t.integer  "network_id"
    t.string   "device_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ips", ["id"], :name => "id", :unique => true

  create_table "networks", :force => true do |t|
    t.string   "net_name"
    t.string   "net_address"
    t.string   "subnet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "networks", ["id"], :name => "id", :unique => true

  create_table "repairs", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "phone_number"
    t.integer  "billmax_acct"
    t.string   "status",         :default => "NEW"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip_address"
    t.datetime "completed_date"
    t.string   "completed_by",   :default => "Jay Fahnestock"
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_number"
    t.string   "email"
    t.text     "directions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service_type",  :default => "24"
    t.string   "survey_status", :default => "active"
    t.text     "notes"
    t.datetime "completed_on"
    t.datetime "surveyed_date"
    t.string   "surveyed_by",   :default => "Jay Fahnestock"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
