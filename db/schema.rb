
ActiveRecord::Schema[7.0].define(version: 2023_05_04_210058) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demons", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
