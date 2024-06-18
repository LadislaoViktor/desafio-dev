# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_17_005123) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "owners_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction_types", force: :cascade do |t|
    t.integer "code"
    t.string "description"
    t.boolean "operation_nature"
    t.boolean "operation_sign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.decimal "value"
    t.string "card_number"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transaction_type_id"
    t.bigint "store_id"
    t.index ["store_id"], name: "index_transactions_on_store_id"
    t.index ["transaction_type_id"], name: "index_transactions_on_transaction_type_id"
  end

  add_foreign_key "transactions", "stores"
  add_foreign_key "transactions", "transaction_types"
end
