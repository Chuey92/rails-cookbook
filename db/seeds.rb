# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
require 'json'

Bookmark.destroy_all
Recipe.destroy_all

# Recipe.create!(
#   name: "Spaghetti Carbonara",
#   description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream, just eggs, cheese, pancetta, and pepper.",
#   image_url: "carbonara-sauce.jpeg",
#   rating: 8.5
# )

# Recipe.create!(
#   name: "Classic Caesar Salad",
#   description: "A delicious Caesar salad with crispy croutons, fresh romaine, and a creamy dressing.",
#   image_url: "Caesar-Salad.jpg",
#   rating: 7.8
# )

# Recipe.create!(
#   name: "Shakshuka",
#   description: "A North African dish of poached eggs in a spiced tomato sauce. Perfect for breakfast or brunch.",
#   image_url: "Shakshuka.jpg",
#   rating: 9.2
# )

# Recipe.create!(
#   name: "Chicken Alfredo Pasta",
#   description: "Rich and creamy alfredo sauce with tender chicken and perfectly cooked fettuccine.",
#   image_url: "CreamyAlfredoSauce.jpg",
#   rating: 8.1
# )

# Chosen categories
categories = ["Breakfast", "Pasta", "Seafood", "Dessert"]

categories.each do |category|
  # Fetch the data from the API endpoint
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  response = URI.open(url).read
  recipes_data = JSON.parse(response)

  # Print recipe IDs for each recipe in the category
  recipes_data["meals"].each do |recipe_data|
    Recipe.create!(
      name: recipe_data['strMeal'],
      description: "A delicious #{category} recipe named #{recipe_data['strMeal']}.",
      image_url: recipe_data['strMealThumb'], # Use the provided thumbnail as image_url
      rating: rand(6.0..10.0).round(1) # Generate a random rating between 6 and 10 for demonstration purposes
    )
    puts "Created Recipe: #{recipe_data['strMeal']}"
  end
end
