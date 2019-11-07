# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'open-uri'
require 'JSON'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = open(url).read
ingredients = JSON.parse(json)

ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

# name_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita'
# json_name = open(name_url).read
# cocktail_name = JSON.parse(json_name)
# cocktail_name['drinks'].
# @cocktails = []
# 10.times do
#   @cocktail_names.push()
# end

# cocktail_names.each do |cocktail|
#   Cocktail.create!(name: cocktail)
# end
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
