require 'pry'

require_relative 'Allergen.rb'
require_relative 'Ingredient.rb'
require_relative 'Recipe.rb'
require_relative 'RecipeCard.rb'
require_relative 'RecipeIngredient.rb'
require_relative 'User.rb'

brad = User.new("Brad")
mk = User.new("Mary-Kate")
alex = User.new("Alex")

tomato = Ingredient.new("tomato")
carrot = Ingredient.new("carrot")
flour = Ingredient.new("flour")
eggs = Ingredient.new("eggs")

lasagne = Recipe.new("lasagne", [tomato, carrot])
brownie = Recipe.new("brownie", [flour, eggs])
masala = Recipe.new("masala", [tomato])
pudding = Recipe.new("pudding", [tomato, carrot, eggs])

allergen_1 = Allergen.new(brad, tomato)
allergen_2 = Allergen.new(mk, carrot)
allergen_3 = Allergen.new(alex, eggs)
allergen_4 = Allergen.new(brad, eggs)
allergen_5 = Allergen.new(mk, eggs)
allergen_6 = Allergen.new(alex, tomato)

flour_1 = RecipeIngredient.new(brownie, flour)
flour_2 = RecipeIngredient.new(masala, flour)
tomato_1 = RecipeIngredient.new(lasagne, tomato)
tomato_2 = RecipeIngredient.new(masala, tomato)
carrot_1 = RecipeIngredient.new(brownie, carrot)
carrot_2 = RecipeIngredient.new(lasagne, carrot)
eggs_1 = RecipeIngredient.new(brownie, eggs)
eggs_2 = RecipeIngredient.new(lasagne, eggs)


card_1 = RecipeCard.new(lasagne, alex, 10, 5)
card_2 = RecipeCard.new(brownie, brad, 10, 4)
card_3 = RecipeCard.new(brownie, alex, 10, 3)
card_4 = RecipeCard.new(brownie, mk, 10, 4)
card_5 = RecipeCard.new(lasagne, mk, 10, 5)
card_6 = RecipeCard.new(masala, alex, 10, 1)
card_7 = RecipeCard.new(pudding, alex, 10, 0)

alex.top_three_recipes


Pry.start
