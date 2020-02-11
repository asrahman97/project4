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

recipe1 = Recipe.create(recipe_name: "Easiest Lasagna", rating: 4, difficulty_level: 3, prep_time: 5, cook_time: 40, total_time: 45, image_url: "https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg", video_url: "https://www.youtube.com/watch?v=jMq8lEu-of0", created_by: 1)

recipe2 = Recipe.create(recipe_name: "Cauliflower Chowder", rating: 4, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://www.twopeasandtheirpod.com/wp-content/uploads/2016/01/Creamy-Cauliflower-Chowder-3-500x375.jpg", video_url: "https://www.youtube.com/watch?v=TKtul4KDCKo", created_by: 2)

recipe3 = Recipe.create(recipe_name: "Lemon Butter Chicken", rating: 4, difficulty_level: 1, prep_time: 10, cook_time: 30, total_time: 40, image_url: "https://www.saltandlavender.com/wp-content/uploads/2018/11/lemon-butter-chicken-recipe-2-500x500.jpg", video_url: "https://www.youtube.com/watch?v=Y27Yp_1hufk", created_by: 3)

recipe4 = Recipe.create(recipe_name: "Crockpot Bacon Potatoes", rating: 3, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://www.aforkstale.com/wp-content/uploads/2018/03/easy-crock-pot-cheesy-bacon-ranch-potatoes-3-500x500.jpg", video_url: "https://www.youtube.com/watch?v=VH6nmipIs3s", created_by: 4)

recipe5 = Recipe.create(recipe_name: "Slow Cooker Honey Garlic Chicken", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 200, total_time: 205, image_url: "https://www.spendwithpennies.com/wp-content/uploads/2013/10/Slow-Cooker-Honey-Garlic-Chicken-26-500x500.jpg", video_url: "https://www.youtube.com/watch?v=rsBeiP0BAHc", created_by: 5)

ingredient1 = Ingredient.create(ingredient_name: "Salt to taste")
ingredient2 = Ingredient.create(ingredient_name: "Pepper to taste")
ingredient3 = Ingredient.create(ingredient_name: "Broth")
ingredient4 = Ingredient.create(ingredient_name: "Cumin")
ingredient5 = Ingredient.create(ingredient_name: "Paprika")

# user2.user.push(recipe2)
# recipe2.Recipe.push(ingredient1)
