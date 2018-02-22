require 'open-uri'
require 'json'

file = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
doc = JSON.parse(file)

doc.values.flatten.each do |block|
  Ingredient.create(name: block.values.first)
end
