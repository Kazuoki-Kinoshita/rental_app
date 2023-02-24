ActiveRecord::Schema.define(version: 2023_02_24_024110) do

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "rent"
    t.string "address"
    t.string "year"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
