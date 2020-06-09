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

ActiveRecord::Schema.define(version: 2020_06_02_040653) do

  create_table "shikihos", force: :cascade do |t|
    t.integer "year"
    t.integer "quarter"
    t.integer "code"
    t.text "comp_name"
    t.text "url"
    t.text "feature"
    t.text "topic"
    t.text "outlook"
    t.integer "next_sales"
    t.integer "next_operationg_income"
    t.integer "next_ordinary_income"
    t.integer "next_net_income"
    t.float "next_net_income_per_share"
    t.float "next_dividend"
    t.integer "prev_sales"
    t.integer "prev_operating_income"
    t.integer "prev_ordinary_income"
    t.integer "prev_net_income"
    t.float "prev_net_income_per_share"
    t.float "prev_dividend"
    t.integer "operationg_cf"
    t.integer "prev_operating_cf"
    t.integer "investment_cf"
    t.integer "prev_investment_cf"
    t.integer "financing_cf"
    t.integer "prev_financing_cf"
    t.integer "cash"
    t.integer "prev_cash"
    t.integer "total_assets"
    t.integer "owned_capital"
    t.text "owned_capital_ratio"
    t.integer "capital"
    t.integer "retained_earnings"
    t.integer "interest_bearing_debt"
    t.text "establishment"
    t.text "stock_listing"
    t.text "settlement"
    t.text "type_of_business"
    t.text "supplier"
    t.text "num_of_employee"
    t.text "head_office"
    t.text "compare_company"
    t.text "certificate"
    t.text "sales_contact"
    t.text "consolidated"
    t.text "consolidated_business"
    t.text "bank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_shikihos_on_code"
    t.index ["quarter"], name: "index_shikihos_on_quarter"
    t.index ["year"], name: "index_shikihos_on_year"
  end

end
