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

ActiveRecord::Schema.define(version: 20180416185644) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.bigint "user_id"
    t.date "date_of_foundation"
    t.string "cnpj"
    t.string "legal_name"
    t.text "address"
    t.string "phone"
    t.string "manager_first_name"
    t.string "manager_last_name"
    t.string "manager_cpf"
    t.string "manager_phone"
    t.string "manager_email"
    t.text "company_description"
    t.string "current_billing"
    t.string "website"
    t.integer "number_of_employees"
    t.string "use_of_proceeds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "deals", force: :cascade do |t|
    t.bigint "company_id"
    t.date "start_date"
    t.date "end_date"
    t.integer "amount"
    t.integer "rate_per_annum"
    t.string "credit_rating"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_deals_on_company_id"
  end

  create_table "investors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "monthly_income"
    t.string "cpf"
    t.string "date_of_birth"
    t.bigint "user_id"
    t.string "gender"
    t.string "mother_name"
    t.string "father_name"
    t.string "phone"
    t.string "address"
    t.string "net_worth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_investors_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "investor_id"
    t.bigint "deal_id"
    t.integer "participation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_transactions_on_deal_id"
    t.index ["investor_id"], name: "index_transactions_on_investor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_company", default: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "companies", "users"
  add_foreign_key "deals", "companies"
  add_foreign_key "investors", "users"
  add_foreign_key "transactions", "deals"
  add_foreign_key "transactions", "investors"
end
