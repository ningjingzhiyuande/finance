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

ActiveRecord::Schema.define(:version => 20110713024411) do

  create_table "exchange_details", :force => true do |t|
    t.integer  "stock_id"
    t.date     "sdate"
    t.float    "current_price"
    t.datetime "stime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exchange_details", ["sdate"], :name => "index_exchange_details_on_sdate"
  add_index "exchange_details", ["stock_id", "stime"], :name => "index_exchange_details_on_stock_id_and_stime"

  create_table "exchanges", :force => true do |t|
    t.integer  "stock_id"
    t.date     "sdate"
    t.float    "opening"
    t.float    "yestoday_close"
    t.float    "high"
    t.float    "low"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exchanges", ["stock_id", "sdate"], :name => "index_exchanges_on_stock_id_and_sdate"

  create_table "stocks", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "kind"
    t.integer  "status",     :default => 0
    t.datetime "last_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
