# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

filepath = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

parsed_ingredients = JSON.parse(open(filepath).read)
p parsed_ingredients
parsed_ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
  p "created #{ingredient["strIngredient1"]}"
end

