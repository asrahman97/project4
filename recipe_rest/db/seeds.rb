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

recipe1 = Recipe.create(recipe_name: "Easiest Lasagna", rating: 4, difficulty_level: 3, prep_time: 5, cook_time: 40, total_time: 45, image_url: "https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg", video_url: "https://www.youtube.com/embed/jMq8lEu-of0", created_by: 1, description: "This is the best recipe for homemade Italian-style lasagna. The balance between layers of cheese, noodles, and homemade bolognese sauce is perfection!")

recipe2 = Recipe.create(recipe_name: "Cauliflower Chowder", rating: 4, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://www.twopeasandtheirpod.com/wp-content/uploads/2016/01/Creamy-Cauliflower-Chowder-3-500x375.jpg", video_url: "https://www.youtube.com/embed/TKtul4KDCKo", created_by: 2, description: "A creamy, low carb, hearty and wonderfully cozy soup for those chilly nights! Try this and be surprised by its taste.")

recipe3 = Recipe.create(recipe_name: "Lemon Butter Chicken", rating: 4, difficulty_level: 1, prep_time: 10, cook_time: 30, total_time: 40, image_url: "https://www.saltandlavender.com/wp-content/uploads/2018/11/lemon-butter-chicken-recipe-2-500x500.jpg", video_url: "https://www.youtube.com/embed/Y27Yp_1hufk", created_by: 3, description: "Easy crisp-tender chicken with the creamiest lemon butter sauce ever – you’ll want to forget the chicken and drink the sauce instead!")

recipe4 = Recipe.create(recipe_name: "Crockpot Bacon Potatoes", rating: 3, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://www.aforkstale.com/wp-content/uploads/2018/03/easy-crock-pot-cheesy-bacon-ranch-potatoes-3-500x500.jpg", video_url: "https://www.youtube.com/embed/VH6nmipIs3s", created_by: 4, description: "I don’t know about you, but any recipe with cheese and bacon in it catches my eye! Salivate as you smell this in the crockpot")

recipe5 = Recipe.create(recipe_name: "Slow Cooker Honey Garlic Chicken", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 200, total_time: 205, image_url: "https://www.spendwithpennies.com/wp-content/uploads/2013/10/Slow-Cooker-Honey-Garlic-Chicken-26-500x500.jpg", video_url: "https://www.youtube.com/embed/rsBeiP0BAHc", created_by: 2, description: "You’ll love this easy crock pot recipe for chicken thighs cooked in a delicious honey garlic sauce.")

recipe6 = Recipe.create(recipe_name: "Beef Wellington", rating: 5, difficulty_level: 5, prep_time: 60, cook_time: 200, total_time: 300, image_url: "https://www.jessicagavin.com/wp-content/uploads/2015/02/beef-wellington-sliced-on-cutting-board-1200.jpg", video_url: "https://www.youtube.com/embed/Cyskqnp1j64", created_by: 2, description: "Beef tenderloin fillet, coated with mustard, mushroom duxelles, ham, wrapped in puff pastry and baked. One of the most difficult recipes to make.")

recipe7 = Recipe.create(recipe_name: "Chicken Biryani", rating: 5, difficulty_level: 4, prep_time: 15, cook_time: 35, total_time: 50, image_url: "https://www.recipetineats.com/wp-content/uploads/2018/08/Chicken-Biryani_1-1-500x500.jpg", video_url: "https://www.youtube.com/embed/iJUdcbCoIcA", created_by: 1, description: "Chicken Biryani is a delicious savory rice dish that is loaded with spicy marinated chicken, caramelized onions, and flavorful saffron rice. It's my favorite dish!")

recipe8 = Recipe.create(recipe_name: "Grandmas's Arroz Con Pollo", rating: 2, difficulty_level: 2, prep_time: 20, cook_time: 65, total_time: 85, image_url: "https://www.abeautifulplate.com/wp-content/uploads/2018/01/arroz-con-pollo-recipe-1-7-720x405.jpg", video_url: "https://www.youtube.com/embed/-9mYTUABGwg", created_by: 4, description: "My roommate first made this for me in 2010. It is what drove me to be a chef in the first place. Please make this with love")

recipe9 = Recipe.create(recipe_name: "Bistec de Palomilla", rating: 5, difficulty_level: 3, prep_time: 20, cook_time: 10, total_time: 30, image_url: "https://www.oldhavanafoods.com/images/Bistec-de-Palomilla.jpg", video_url: "https://www.youtube.com/embed/rsBeiP0BAHc", created_by: 5, description: "Bistec de Palomilla is the quintessential Cuban meal. It’s popular in both Cuban restaurants and in homes.")

recipe10 = Recipe.create(recipe_name: "Grilled Sampler", rating: 5, difficulty_level: 3, prep_time: 10, cook_time: 40, total_time: 50, image_url: "https://media-cdn.tripadvisor.com/media/photo-s/14/f1/4f/d2/grilled-sampler.jpg", video_url: "https://www.youtube.com/embed/2VxNqBe267Y", created_by: 4, description: "Everything's better when it's grilled. This low-carb dish will help contribute to your summer body!")

recipe11 = Recipe.create(recipe_name: "Juicy Lobster Tacos", rating: 5, difficulty_level: 1, prep_time: 10, cook_time: 40, total_time: 50, image_url: "https://www.cleaneatingmag.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTQ0NzQxNjgyODc5MDc5NTky/lobster-tacos-with-jicama-corn-cabbage-and-avocado-toppings.jpg", video_url: "https://www.youtube.com/embed/A6Z_pfWStEY", created_by: 1, description: "Turn your meal into a lobster fiesta with these street-style tacos!")

recipe12 = Recipe.create(recipe_name: "Spicy Steak Sandwiches", rating: 5, difficulty_level: 3, prep_time: 15, cook_time: 20, total_time: 35, image_url: "https://www.recipetineats.com/wp-content/uploads/2017/01/Steak-Sandwich-7-copy.jpg", video_url: "https://www.youtube.com/embed/h9F4VN2LiO8", created_by: 2, description: "For a tasty lunch or dinner that is inexpensive, delicious and fast to make, it's hard to beat a fast-and-easy steak sandwich!")

recipe13 = Recipe.create(recipe_name: "The Best Jalapeno Burger", rating: 5, difficulty_level: 3, prep_time: 10, cook_time: 15, total_time: 25, image_url: "https://assets.kraftfoods.com/recipe_images/183725.jpg", video_url: "https://www.youtube.com/embed/0Osy3Pf2QpM", created_by: 3, description: "This spicy burger brings out that inner kid from you. You'll forget about all your stresses and hear the sweet sounds of that soulful piano.")

recipe14 = Recipe.create(recipe_name: "Hearty Chicken Noodle Soup", rating: 5, difficulty_level: 1, prep_time: 10, cook_time: 60, total_time: 70, image_url: "https://images.parents.mdpcdn.com/sites/parents.com/files/recipe/images/RU251680.jpg", video_url: "https://www.youtube.com/embed/45WXFbSyGm4", created_by: 1, description: "No need to do anything special. Warm yourself up with this hearty meal in the winter.")

recipe15 = Recipe.create(recipe_name: "Milky Tres Leches Cake", rating: 5, difficulty_level: 3, prep_time: 25, cook_time: 40, total_time: 65, image_url: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2019/09/Tres-Leches-Cake-Recipe-1-of-1.jpg", video_url: "https://www.youtube.com/embed/iIDXc6xZ0X8", created_by: 1, description: "Goodness gracious. This the type of cake to make you call your mama and apologize for begging for all the clothes you couldn't afford")

recipe16 = Recipe.create(recipe_name: "SuperBowl Chicken Wings", rating: 5, difficulty_level: 2, prep_time: 10, cook_time: 25, total_time: 35, image_url: "https://rickrodgers.com/wp-content/uploads/2015/01/Roasted-Korean-Chicken-Wings.jpg", video_url: "https://www.youtube.com/embed/Ht7mK5dX0es", created_by: 2, description: "You may hate that Tom Brady is playing in another super bowl but you're estatic about having these wings.")

recipe17 = Recipe.create(recipe_name: "Baked Dijon Salmon", rating: 5, difficulty_level: 4, prep_time: 15, cook_time: 60, total_time: 75, image_url: "https://www.diversivore.com/wp-content/uploads/2018/12/Honey-Dijon-Baked-Salmon-mobile-square.jpg", video_url: "https://www.youtube.com/embed/MfzEkpd3tkI", created_by: 3, description: "Sometimes you gotta spice up the fish. Try to salmon. It brings a beautiful combination of flavors.")

recipe18 = Recipe.create(recipe_name: "Popeyes Spicy Chicken Sandwich", rating: 5, difficulty_level: 4, prep_time: 5, cook_time: 15, total_time: 20, image_url: "https://i.insider.com/5d5bfa76cd978452b0185155?width=1100&format=jpeg&auto=webp", video_url: "https://www.youtube.com/embed/tuczaAVBur4", created_by: 4, description: "Bar none, the best chicken sandwich of all time. Since they're all sold out, make this one at home and serve your loved ones!")

recipe19 = Recipe.create(recipe_name: "Pound Cake", rating: 5, difficulty_level: 2, prep_time: 5, cook_time: 60, total_time: 65, image_url: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/07/Best-Pound-Cake-Recipe-2-of-5-2.jpg", video_url: "https://www.youtube.com/embed/lTmCZZr346I", created_by: 5, description: "Not just a Drake song, but one of the staples of every chef's arsenal.")

recipe20 = Recipe.create(recipe_name: "Sashimi Bowl", rating: 5, difficulty_level: 1, prep_time: 5, cook_time: 5, total_time: 10, image_url: "https://healthyfitnessmeals.com/wp-content/uploads/2017/12/easy-sushi-bowls-square-2.jpg", video_url: "https://www.youtube.com/embed/l7IsrZYz4h4", created_by: 5, description: "Light, fast and expensive. Mix these ingredients together for a protein packed meal.")

recipe21 = Recipe.create(recipe_name: "Chicken Fetucinne Alfredo", rating: 5, difficulty_level: 4, prep_time: 15, cook_time: 25, total_time: 40, image_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/9/15/1/FNK_Chicken-Fettucine-Alfredo_s4x3.jpg.rend.hgtvcom.826.620.suffix/1442375396342.jpeg", video_url: "https://www.youtube.com/embed/LPPcNPdq_j4", created_by: 1, description: "Comfort food at it's finest! The ultimate cheat meal. Just substitute the cream for some coconut milk for a lighter option.")

recipe22 = Recipe.create(recipe_name: "Slow Cooker Jambalaya", rating: 5, difficulty_level: 3, prep_time: 10, cook_time: 180, total_time: 190, image_url: "https://www.tasteofhome.com/wp-content/uploads/0001/01/Slow-Cooker-Jambalaya-Risotto_EXPS_THEDSCODR19_196785_C03_01_2b_rms-696x696.jpg", video_url: "https://www.youtube.com/embed/3PaiaizyaIw", created_by: 2, description: "You'll feel like you're in New Orleans with this one. Not too hard to cook, just throw it in the slow cooker.")

recipe23 = Recipe.create(recipe_name: "Shrimp Lemon Pepper Linguine", rating: 5, difficulty_level: 3, prep_time: 5, cook_time: 25, total_time: 30, image_url: "https://food.theffeed.com/wp-content/uploads/sites/7/2019/06/singleimagebug-creamy-lemon-pepper-shrimp-spaghetti-pin-1558107856-e1560888728695-768x768.jpg", video_url: "https://www.youtube.com/embed/dBgT7818wxk", created_by: 3, description: "Guests will adore this meal if you serve them this. Make sure to not overcook the shrimp as they tend to get smaller.")

recipe24 = Recipe.create(recipe_name: "Balsamic Glazed Salmon Fillets", rating: 5, difficulty_level: 4, prep_time: 5, cook_time: 30, total_time: 35, image_url: "https://i.pinimg.com/originals/ca/72/fa/ca72fa37db5a752e6caed896330305fe.jpg", video_url: "https://www.youtube.com/embed/04Di-yqO22c", created_by: 1, description: "The strong flavor of the balsamic glaze adds a delicate of crucial taste to this classic dish.")

recipe25 = Recipe.create(recipe_name: "Thai Cocunut Shrimp", rating: 5, difficulty_level: 4, prep_time: 20, cook_time: 20, total_time: 60, image_url: "https://i0.wp.com/www.butterandthings.com/wp-content/uploads/2017/06/Thai-Coconut-Shrimp-Soup-1.jpg?resize=1080%2C1113&ssl=1", video_url: "https://www.youtube.com/embed/YWwG0Utpd2U", created_by: 2, description: "You'll feel like you're in Thailand when you smell the irresistible fragrance of this curry.")

recipe26 = Recipe.create(recipe_name: "Garlic Beef Stew", rating: 5, difficulty_level: 1, prep_time: 5, cook_time: 120, total_time: 125, image_url: "https://allyskitchen.com/wp-content/uploads/2014/08/DSC_8218-001.jpg", video_url: "https://www.youtube.com/embed/GJhU_6J_F9I", created_by: 1, description: "Don't even consider calling this garlic beef if you don't add at least 20 pieces of garlic. The aroma is to die for")

recipe27 = Recipe.create(recipe_name: "Halal Chicken Over Rice", rating: 5, difficulty_level: 4, prep_time: 15, cook_time: 15, total_time: 30, image_url: "https://www.seriouseats.com/recipes/images/2011/12/20111205-ctb-halal-chicken-rice-primary.jpg", video_url: "https://www.youtube.com/embed/sxX7_0YhFGY", created_by: 1, description: "New York made this famous. Now try this at home to feel like you're wearing Timbs and a Yankee fitted.")



# ingredient1 = Ingredient.create(ingredient_name: "Salt to taste")
# ingredient2 = Ingredient.create(ingredient_name: "Pepper to taste")
# ingredient3 = Ingredient.create(ingredient_name: "Broth")
# ingredient4 = Ingredient.create(ingredient_name: "Cumin")
# ingredient5 = Ingredient.create(ingredient_name: "Paprika")

# user2.user.push(recipe2)
# recipe2.Recipe.push(ingredient1)
