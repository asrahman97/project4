class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.integer :rating
      t.integer :difficulty_level
      t.integer :prep_time
      t.integer :cook_time
      t.integer :total_time
      t.string :image_url, default: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/garlic-spaghetti-horizontal-1539203011.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*"
      t.string :video_url
      t.integer :user_id


      t.timestamps
    end
  end
end
