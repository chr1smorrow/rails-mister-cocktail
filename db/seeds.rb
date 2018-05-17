require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drink_serialized = open(url).read
drinks = JSON.parse(drink_serialized)

drink_array = drinks["drinks"]

drink_array.each do |drink_hash|
 Ingredient.create(name: drink_hash["strIngredient1"])
end

