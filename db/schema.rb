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

ActiveRecord::Schema.define(version: 0) do

  create_table "a03a3_group", primary_key: "Tour_Code", force: :cascade do |t|
    t.datetime "Tour_Date",                             null: false
    t.text     "Tour_Name",          limit: 4294967295, null: false
    t.string   "Week_Day",           limit: 2,          null: false
    t.integer  "Tour_Days",          limit: 4,          null: false
    t.string   "Tour_Type",          limit: 8,          null: false
    t.string   "Departure_City",     limit: 4,          null: false
    t.string   "Destination_City",   limit: 10,         null: false
    t.string   "Region_Code",        limit: 4,          null: false
    t.string   "AirLine_Code",       limit: 3,          null: false
    t.string   "Company_Code",       limit: 2,          null: false
    t.string   "Company_Name",       limit: 6,          null: false
    t.string   "Group_Status",       limit: 4,          null: false
    t.string   "Group_Status_Memo",  limit: 30,         null: false
    t.string   "Cancel_Code",        limit: 2,          null: false
    t.text     "Cancel_Type",        limit: 4294967295, null: false
    t.integer  "TL_Reserved",        limit: 4,          null: false
    t.integer  "TL_Booking",         limit: 4,          null: false
    t.integer  "Total_Seat",         limit: 4,          null: false
    t.integer  "KK_Pax",             limit: 4,          null: false
    t.integer  "HK_Pax",             limit: 4,          null: false
    t.integer  "HL_Pax",             limit: 4,          null: false
    t.integer  "RQ_Pax",             limit: 4,          null: false
    t.integer  "NB_Pax",             limit: 4,          null: false
    t.integer  "KX_Pax",             limit: 4,          null: false
    t.integer  "PAK_Pax",            limit: 4,          null: false
    t.integer  "Fake_Pax",           limit: 4,          null: false
    t.integer  "Join_Tour_Pax",      limit: 4,          null: false
    t.integer  "Ticket_Only_Pax",    limit: 4,          null: false
    t.integer  "KK_Ticket_Only_Pax", limit: 4,          null: false
    t.integer  "FOC_Pax",            limit: 4,          null: false
    t.integer  "Available_Pax",      limit: 4,          null: false
  end

  add_index "a03a3_group", ["Region_Code"], name: "Region_Code", using: :btree

  create_table "a03a3_regioncode", primary_key: "Region_Code", force: :cascade do |t|
    t.string  "Region_Name",  limit: 40, null: false
    t.string  "Code_Type",    limit: 1,  null: false
    t.integer "Visible_Mark", limit: 4,  null: false
  end

  create_table "a05b00_order", id: false, force: :cascade do |t|
    t.integer  "Order_No",       limit: 4,  null: false
    t.string   "Product_Type",   limit: 10, null: false
    t.integer  "Finish_Mark",    limit: 4,  null: false
    t.integer  "Cancel_Mark",    limit: 4,  null: false
    t.string   "System_Type",    limit: 4,  null: false
    t.string   "Tx_Type",        limit: 4,  null: false
    t.string   "Sales_Type",     limit: 8,  null: false
    t.integer  "Internal_Mark",  limit: 4
    t.integer  "Member_No",      limit: 4,  null: false
    t.string   "Customer_Type",  limit: 4,  null: false
    t.integer  "Agent_No",       limit: 4,  null: false
    t.string   "Unit_Code",      limit: 4
    t.datetime "Input_Date",                null: false
    t.datetime "Departure_Date",            null: false
    t.string   "Order_Digest",   limit: 80, null: false
    t.integer  "Order_Profit",   limit: 4,  null: false
  end

  create_table "a05b01_paxdata", primary_key: "Pax_Key", force: :cascade do |t|
    t.integer  "Order_No",          limit: 4,  null: false
    t.datetime "Tour_Date",                    null: false
    t.string   "Tour_Code",         limit: 16, null: false
    t.integer  "Pax_No",            limit: 4,  null: false
    t.integer  "Effect_Mark",       limit: 4,  null: false
    t.integer  "Cancel_Mark",       limit: 4,  null: false
    t.datetime "Cancel_Time",                  null: false
    t.datetime "Issue_Cancel_Time",            null: false
    t.string   "Pax_Data",          limit: 8,  null: false
    t.string   "Pax_Type",          limit: 8,  null: false
    t.string   "Pax_Gender",        limit: 2,  null: false
    t.datetime "Pax_Birthday",                 null: false
    t.integer  "Pax_Age",           limit: 4,  null: false
    t.integer  "Tour_Leader_Mark",  limit: 4,  null: false
    t.string   "Foreign_Passport",  limit: 20, null: false
    t.integer  "Retail_Price",      limit: 4,  null: false
    t.string   "Pax_Title",         limit: 4,  null: false
    t.integer  "Ticket_Only_Mark",  limit: 4,  null: false
    t.integer  "Join_Tour_Mark",    limit: 4,  null: false
  end

  add_index "a05b01_paxdata", ["Order_No"], name: "Order_No", using: :btree
  add_index "a05b01_paxdata", ["Tour_Code"], name: "Tour_Code", using: :btree

  create_table "a05b01_tourorder", primary_key: "Order_No", force: :cascade do |t|
    t.datetime "Tour_Date",                 null: false
    t.string   "Tour_Code",      limit: 16, null: false
    t.string   "Booking_Status", limit: 4,  null: false
    t.string   "Status_Memo",    limit: 40, null: false
    t.integer  "Booking_Nos",    limit: 4,  null: false
    t.integer  "Child_Nos",      limit: 4,  null: false
    t.integer  "Seatless_Nos",   limit: 4,  null: false
    t.integer  "Adt_Pax",        limit: 4,  null: false
    t.integer  "Chd_Pax",        limit: 4,  null: false
    t.integer  "Ceb_Pax",        limit: 4,  null: false
    t.integer  "Cnb_Pax",        limit: 4,  null: false
    t.integer  "Inf_Pax",        limit: 4,  null: false
    t.integer  "Join_Tour_Pax",  limit: 4,  null: false
    t.integer  "TL_Pax",         limit: 4,  null: false
    t.integer  "HK_Pax",         limit: 4,  null: false
    t.integer  "HK_Deposit",     limit: 4,  null: false
    t.integer  "KK_Cancel",      limit: 4,  null: false
    t.integer  "Forfeit_Pax",    limit: 4,  null: false
    t.integer  "Forfeit_Price",  limit: 4,  null: false
    t.integer  "No_Forfeit_Pax", limit: 4,  null: false
    t.integer  "KK_Mark",        limit: 4,  null: false
  end

  add_index "a05b01_tourorder", ["Tour_Code"], name: "Tour_Code", using: :btree

end
