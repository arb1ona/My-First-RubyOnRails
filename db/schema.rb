ActiveRecord::Schema.define(version: 2021_03_24_183143) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "asin"
    t.string "number_of_pages"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
