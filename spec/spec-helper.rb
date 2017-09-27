ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("sinatra/activerecord")
require("recipe")
require('tag')

RSpec.configure do |config|
  config.after(:each) do
    Recipe.all().each() do |recipe|
      recipe.destroy()
    end
    Tag.all.each do |tag|
      tag.destroy
    end
    Ingredient.all.each do |ingredient|
      ingredient.destroy
  end
end
