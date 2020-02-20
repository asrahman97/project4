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

ActiveRecord::Schema.define(version: 2020_02_19_170248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "ingredient_name"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_ratings_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "recipe_name"
    t.integer "rating"
    t.integer "difficulty_level"
    t.integer "prep_time"
    t.integer "cook_time"
    t.integer "total_time"
    t.string "image_url", default: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/garlic-spaghetti-horizontal-1539203011.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*"
    t.string "video_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "created_by"
    t.text "description"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "review_message"
    t.integer "score"
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "created_by"
    t.index ["recipe_id"], name: "index_reviews_on_recipe_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user"
    t.string "password_digest"
    t.string "image_url", default: "https://3p5jd1qf3lk1yfzr02w96yn1-wpengine.netdna-ssl.com/wp-content/uploads/2016/09/default-user-img.jpg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingredients", "recipes"
  add_foreign_key "ratings", "recipes"
  add_foreign_key "reviews", "recipes"
  add_foreign_key "reviews", "users"
end
