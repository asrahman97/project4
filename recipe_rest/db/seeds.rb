# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(user: "admin", password: "1234", image_url: "https://www.usmagazine.com/wp-content/uploads/1434730838_tom-from-myspace-441.jpg?w=350&h=441&crop=1")

user2 = User.create(user: "Ash Money", password: "Hello", image_url: "https://i.imgur.com/7Fb1Wah.png")

user3 = User.create(user: "Sir Richard", password: "fuck", image_url: "https://media-exp1.licdn.com/dms/image/C5603AQHSDzMB_wXItQ/profile-displayphoto-shrink_800_800/0?e=1586995200&v=beta&t=TGEpS5pBo8rFOExYye-eC24rA3u8-9f7nZmLb3Xqebk")

user4 = User.create(user: "Rico Suave", password: "oi mate", image_url: "https://richardbraamburg.me/resources/me.png")

user5 = User.create(user: "King Henry", password: "eminem", image_url: "https://media-exp1.licdn.com/dms/image/C4D03AQG9XANXACNiBA/profile-displayphoto-shrink_800_800/0?e=1586995200&v=beta&t=0zzQEQZrTl9ZQN-dQRY0jve3Te-lrEJdyXDCR_Q2vr4")

recipe1 = Recipe.create(recipe_name: "Easiest Lasagna", rating: "", difficulty_level: 1, prep_time: 5, cook_time: 20, total_time: 40, image_url: "", video_url:_"")

recipe2 = Recipe.create(recipe_name: "Cauliflower Chowder", rating: "", difficulty_level: 1, prep_time: 5, cook_time: 20, total_time: 40, image_url: "", video_url:_"")

recipe3 = Recipe.create(recipe_name: "Lemon Butter Chicken", rating: "", difficulty_level: 1, prep_time: 5, cook_time: 20, total_time: 40, image_url: "", video_url:_"")

recipe4 = Recipe.create(recipe_name: "Crockpot Bacon Potatoes", rating: "", difficulty_level: 1, prep_time: 5, cook_time: 20, total_time: 40, image_url: "", video_url:_"")

recipe5 = Recipe.create(recipe_name: "Slow Cooker Honey Garlic Chicken", rating: "", difficulty_level: 1, prep_time: 5, cook_time: 20, total_time: 40, image_url: "", video_url:_"")