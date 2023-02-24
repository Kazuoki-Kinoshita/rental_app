ActiveRecord::Schema.define(version: 2023_02_24_101645) do

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.integer "rent"
    t.string "address"
    t.integer "year"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "line"
    t.string "station_name"
    t.integer "minutes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
