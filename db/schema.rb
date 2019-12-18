# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_18_104343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string "description"
    t.date "document_date"
    t.string "document_currency"
    t.decimal "document_amount"
    t.date "shipment_date"
    t.string "country_of_origin"
    t.string "incoterms"
    t.string "shipment_from"
    t.string "port_of_loading"
    t.string "port_of_discharge"
    t.string "final_destination"
    t.text "goods_description"
    t.text "consignee"
    t.text "shipper"
    t.text "notify_party"
    t.text "issuing_bank"
    t.text "remarks"
    t.bigint "exportlc_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exportlc_id"], name: "index_documents_on_exportlc_id"
  end

  create_table "exportlcs", force: :cascade do |t|
    t.string "lc_number"
    t.date "issue_date"
    t.date "expiry_date"
    t.string "currency"
    t.decimal "amount"
    t.text "applicant"
    t.text "beneficiary"
    t.text "issuing_bank"
    t.string "tenor"
    t.string "shipment_from"
    t.string "port_of_loading"
    t.string "port_of_discharge"
    t.string "final_destination"
    t.date "latest_shipment_date"
    t.string "partial_shipment"
    t.string "transhipment"
    t.text "goods_description"
    t.text "documents_required"
    t.text "additional_conditions"
    t.text "drawee"
    t.text "available_with"
    t.string "available_by"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "documents", "exportlcs"
end
