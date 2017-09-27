require("sinatra")
require("sinatra/reloader")
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require("pg")
require('./lib/ingredient')
require('./lib/recipe')
require('./lib/tag')
require('pry')

get('/') do
  @recipes = Recipe.all
  erb(:index)
end

post('/') do
  Recipe.create({:name => params['name']})
  @recipes = Recipe.all
  erb(:index)
end

get('/recipe/:id') do
  @recipe = Recipe.find(params['id'])
  @ingredients = Ingredient.all
  @ingredients = @recipe.ingredients()
  erb(:recipe)
end

post('/recipe/:id') do
  Ingredient.create({:item => params['ingredient'], :recipe_id => params['recipe_id']})
  @recipe = Recipe.find(params['id'])
  @ingredients = @recipe.ingredients
  erb(:recipe)
end

# get('/ingredient/:item') do
#
#   erb(:recipe)
# end
