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

recipe1 = Recipe.create(recipe_name: "Easiest Lasagna", rating: 4, difficulty_level: 3, prep_time: 5, cook_time: 40, total_time: 45, image_url: "https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg", video_url: "https://www.youtube.com/embed/jMq8lEu-of0", created_by: 1)

recipe2 = Recipe.create(recipe_name: "Cauliflower Chowder", rating: 4, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://www.twopeasandtheirpod.com/wp-content/uploads/2016/01/Creamy-Cauliflower-Chowder-3-500x375.jpg", video_url: "https://www.youtube.com/watch?v=TKtul4KDCKo", created_by: 2)

recipe3 = Recipe.create(recipe_name: "Lemon Butter Chicken", rating: 4, difficulty_level: 1, prep_time: 10, cook_time: 30, total_time: 40, image_url: "https://www.saltandlavender.com/wp-content/uploads/2018/11/lemon-butter-chicken-recipe-2-500x500.jpg", video_url: "https://www.youtube.com/watch?v=Y27Yp_1hufk", created_by: 3)

recipe4 = Recipe.create(recipe_name: "Crockpot Bacon Potatoes", rating: 3, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://www.aforkstale.com/wp-content/uploads/2018/03/easy-crock-pot-cheesy-bacon-ranch-potatoes-3-500x500.jpg", video_url: "https://www.youtube.com/watch?v=VH6nmipIs3s", created_by: 4)

recipe5 = Recipe.create(recipe_name: "Slow Cooker Honey Garlic Chicken", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 200, total_time: 205, image_url: "https://www.spendwithpennies.com/wp-content/uploads/2013/10/Slow-Cooker-Honey-Garlic-Chicken-26-500x500.jpg", video_url: "https://www.youtube.com/watch?v=rsBeiP0BAHc", created_by: 2)

recipe6 = Recipe.create(recipe_name: "Beef Wellington", rating: 5, difficulty_level: 5, prep_time: 60, cook_time: 200, total_time: 300, image_url: "https://www.jessicagavin.com/wp-content/uploads/2015/02/beef-wellington-sliced-on-cutting-board-1200.jpg", video_url: "https://www.youtube.com/watch?v=Cyskqnp1j64", created_by: 2)

recipe7 = Recipe.create(recipe_name: "Chicken Biryani", rating: 5, difficulty_level: 2, prep_time: 15, cook_time: 35, total_time: 50, image_url: "https://www.recipetineats.com/wp-content/uploads/2018/08/Chicken-Biryani_1-1-500x500.jpg", video_url: "https://www.youtube.com/watch?v=iJUdcbCoIcA", created_by: 1)

recipe8 = Recipe.create(recipe_name: "Mama's Arroz Con Pollo", rating: 5, difficulty_level: 2, prep_time: 20, cook_time: 65, total_time: 85, image_url: "https://www.abeautifulplate.com/wp-content/uploads/2018/01/arroz-con-pollo-recipe-1-7-720x405.jpg", video_url: "https://www.youtube.com/watch?v=-9mYTUABGwg", created_by: 4)

recipe9 = Recipe.create(recipe_name: "Bistec de Palomilla", rating: 5, difficulty_level: 2, prep_time: 20, cook_time: 10, total_time: 30, image_url: "https://www.oldhavanafoods.com/images/Bistec-de-Palomilla.jpg", video_url: "https://www.youtube.com/watch?v=rsBeiP0BAHc", created_by: 5)

recipe10 = Recipe.create(recipe_name: "Grilled Sampler", rating: 5, difficulty_level: 2, prep_time: 10, cook_time: 40, total_time: 50, image_url: "https://media-cdn.tripadvisor.com/media/photo-s/14/f1/4f/d2/grilled-sampler.jpg", video_url: "https://www.youtube.com/watch?v=2VxNqBe267Y", created_by: 4)

recipe11 = Recipe.create(recipe_name: "Juicy Lobster Tacos", rating: 5, difficulty_level: 2, prep_time: 10, cook_time: 40, total_time: 50, image_url: "https://www.cleaneatingmag.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTQ0NzQxNjgyODc5MDc5NTky/lobster-tacos-with-jicama-corn-cabbage-and-avocado-toppings.jpg", video_url: "https://www.youtube.com/watch?v=A6Z_pfWStEY", created_by: 1)

recipe12 = Recipe.create(recipe_name: "Spicy Steak Sandwiches", rating: 5, difficulty_level: 2, prep_time: 15, cook_time: 20, total_time: 35, image_url: "https://www.recipetineats.com/wp-content/uploads/2017/01/Steak-Sandwich-7-copy.jpg", video_url: "https://www.youtube.com/watch?v=h9F4VN2LiO8", created_by: 2)

recipe13 = Recipe.create(recipe_name: "The Best Jalapeno Burger", rating: 5, difficulty_level: 1, prep_time: 10, cook_time: 15, total_time: 25, image_url: "https://assets.kraftfoods.com/recipe_images/183725.jpg", video_url: "https://www.youtube.com/watch?v=0Osy3Pf2QpM", created_by: 3)

recipe14 = Recipe.create(recipe_name: "Hearty Chicken Noodle Soup", rating: 5, difficulty_level: 2, prep_time: 10, cook_time: 60, total_time: 70, image_url: "https://images.parents.mdpcdn.com/sites/parents.com/files/recipe/images/RU251680.jpg", video_url: "https://www.youtube.com/watch?v=45WXFbSyGm4", created_by: 1)

recipe15 = Recipe.create(recipe_name: "Milky Tres Leches Cake", rating: 5, difficulty_level: 2, prep_time: 25, cook_time: 40, total_time: 65, image_url: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2019/09/Tres-Leches-Cake-Recipe-1-of-1.jpg", video_url: "https://www.youtube.com/watch?v=iIDXc6xZ0X8", created_by: 1)

recipe16 = Recipe.create(recipe_name: "SuperBowl Chicken Wings", rating: 5, difficulty_level: 2, prep_time: 10, cook_time: 25, total_time: 35, image_url: "https://rickrodgers.com/wp-content/uploads/2015/01/Roasted-Korean-Chicken-Wings.jpg", video_url: "https://www.youtube.com/watch?v=Ht7mK5dX0es", created_by: 2)

recipe17 = Recipe.create(recipe_name: "Baked Dijon Salmon", rating: 5, difficulty_level: 2, prep_time: 15, cook_time: 60, total_time: 75, image_url: "https://www.diversivore.com/wp-content/uploads/2018/12/Honey-Dijon-Baked-Salmon-mobile-square.jpg", video_url: "https://www.youtube.com/watch?v=MfzEkpd3tkI", created_by: 3)

recipe18 = Recipe.create(recipe_name: "Popeyes Spicy Chicken Sandwich", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 15, total_time: 20, image_url: "https://i.insider.com/5d5bfa76cd978452b0185155?width=1100&format=jpeg&auto=webp", video_url: "https://www.youtube.com/watch?v=tuczaAVBur4", created_by: 4)

recipe19 = Recipe.create(recipe_name: "Pound Cake", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/07/Best-Pound-Cake-Recipe-2-of-5-2.jpg", video_url: "https://www.youtube.com/watch?v=lTmCZZr346I", created_by: 5)

recipe20 = Recipe.create(recipe_name: "Sashimi Bowl", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 5, total_time: 10, image_url: "https://healthyfitnessmeals.com/wp-content/uploads/2017/12/easy-sushi-bowls-square-2.jpg", video_url: "https://www.youtube.com/watch?v=l7IsrZYz4h4", created_by: 5)

recipe21 = Recipe.create(recipe_name: "Chicken Fetucinne Alfredo", rating: 5, difficulty_level: 2, prep_time: 15, cook_time: 25, total_time: 40, image_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/9/15/1/FNK_Chicken-Fettucine-Alfredo_s4x3.jpg.rend.hgtvcom.826.620.suffix/1442375396342.jpeg", video_url: "https://www.youtube.com/watch?v=LPPcNPdq_j4", created_by: 1)

recipe22 = Recipe.create(recipe_name: "Slow Cooker Jambalaya", rating: 5, difficulty_level: 2, prep_time: 10, cook_time: 180, total_time: 190, image_url: "https://www.tasteofhome.com/wp-content/uploads/0001/01/Slow-Cooker-Jambalaya-Risotto_EXPS_THEDSCODR19_196785_C03_01_2b_rms-696x696.jpg", video_url: "https://www.youtube.com/watch?v=3PaiaizyaIw", created_by: 2)

recipe23 = Recipe.create(recipe_name: "Shrimp Lemon Pepper Linguine", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 25, total_time: 30, image_url: "https://food.theffeed.com/wp-content/uploads/sites/7/2019/06/singleimagebug-creamy-lemon-pepper-shrimp-spaghetti-pin-1558107856-e1560888728695-768x768.jpg", video_url: "https://www.youtube.com/watch?v=dBgT7818wxk", created_by: 3)

recipe24 = Recipe.create(recipe_name: "Balsamic Glazed Salmon Fillets", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 30, total_time: 35, image_url: "https://i.pinimg.com/originals/ca/72/fa/ca72fa37db5a752e6caed896330305fe.jpg", video_url: "https://www.youtube.com/watch?v=04Di-yqO22c", created_by: 1)

recipe25 = Recipe.create(recipe_name: "Thai Cocunut Shrimp", rating: 5, difficulty_level: 2, prep_time: 20, cook_time: 20, total_time: 60, image_url: "https://i0.wp.com/www.butterandthings.com/wp-content/uploads/2017/06/Thai-Coconut-Shrimp-Soup-1.jpg?resize=1080%2C1113&ssl=1", video_url: "https://www.youtube.com/watch?v=YWwG0Utpd2U", created_by: 2)

recipe26 = Recipe.create(recipe_name: "Garlic Beef Stew", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 120, total_time: 125, image_url: "https://allyskitchen.com/wp-content/uploads/2014/08/DSC_8218-001.jpg", video_url: "https://www.youtube.com/watch?v=GJhU_6J_F9I", created_by: 1)

recipe27 = Recipe.create(recipe_name: "Halal Chicken Over Rice", rating: 5, difficulty_level: 2, prep_time: 15, cook_time: 15, total_time: 30, image_url: "https://www.seriouseats.com/recipes/images/2011/12/20111205-ctb-halal-chicken-rice-primary.jpg", video_url: "https://www.youtube.com/watch?v=sxX7_0YhFGY", created_by: 1)

# ingredient1 = Ingredient.create(ingredient_name: "Salt to taste")
# ingredient2 = Ingredient.create(ingredient_name: "Pepper to taste")
# ingredient3 = Ingredient.create(ingredient_name: "Broth")
# ingredient4 = Ingredient.create(ingredient_name: "Cumin")
# ingredient5 = Ingredient.create(ingredient_name: "Paprika")

# user2.user.push(recipe2)
# recipe2.Recipe.push(ingredient1)
