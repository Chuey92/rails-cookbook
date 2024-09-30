# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.destroy_all

Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream, just eggs, cheese, pancetta, and pepper.",
  image_url: "https://img.taste.com.au/qDMKP6MZ/w643-h428-cfill-q90/taste/2016/11/carbonara-sauce-28894-1.jpeg",
  rating: 8.5
)

Recipe.create!(
  name: "Classic Caesar Salad",
  description: "A delicious Caesar salad with crispy croutons, fresh romaine, and a creamy dressing.",
  image_url: "https://natashaskitchen.com/wp-content/uploads/2019/01/Caesar-Salad-Recipe-3.jpg",
  rating: 7.8
)

Recipe.create!(
  name: "Shakshuka",
  description: "A North African dish of poached eggs in a spiced tomato sauce. Perfect for breakfast or brunch.",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/1/18/Shakshuka_by_Calliopejen1.jpg",
  rating: 9.2
)

Recipe.create!(
  name: "Chicken Alfredo Pasta",
  description: "Rich and creamy alfredo sauce with tender chicken and perfectly cooked fettuccine.",
  image_url: "https://www.allrecipes.com/thmb/9aWCdbfttLcsW2dFQWwVQBGJM3E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-236973-CreamyAlfredoSauce-0238-4x3-1-01e7091f47ae452d991abe32cbed5921.jpg",
  rating: 8.1
)
