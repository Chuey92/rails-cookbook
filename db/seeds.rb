# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Bookmark.destroy_all
Recipe.destroy_all

Recipe.create!(
  name: "Spaghetti Carbonara",
  description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream, just eggs, cheese, pancetta, and pepper.",
  image_url: "carbonara-sauce.jpeg",
  rating: 8.5
)

Recipe.create!(
  name: "Classic Caesar Salad",
  description: "A delicious Caesar salad with crispy croutons, fresh romaine, and a creamy dressing.",
  image_url: "Caesar-Salad.jpg",
  rating: 7.8
)

Recipe.create!(
  name: "Shakshuka",
  description: "A North African dish of poached eggs in a spiced tomato sauce. Perfect for breakfast or brunch.",
  image_url: "Shakshuka.jpg",
  rating: 9.2
)

Recipe.create!(
  name: "Chicken Alfredo Pasta",
  description: "Rich and creamy alfredo sauce with tender chicken and perfectly cooked fettuccine.",
  image_url: "CreamyAlfredoSauce.jpg",
  rating: 8.1
)
