class Recipe

  attr_accessor :name, :ingredients

  @@all = []

  def initialize(name, ingredients = [])
    @name = name
    @ingredients = ingredients
    self.class.all << self
  end

  def self.all
    @@all
  end

  def users
    cards_including_recipe = RecipeCard.all.select do |recipe_card_instance|
      recipe_card_instance.recipe == self
    end
    cards_including_recipe.map do |recipe_card_instance|
      recipe_card_instance.user
    end
  end

def my_ingredients
  recipe_ingredient_array = RecipeIngredient.all.select do |recipe_ingredient_instance|
    recipe_ingredient_instance.recipe == self
  end
  recipe_ingredient_array.map do |recipe_ingredient_instance|
    recipe_ingredient_instance.ingredient
  end
end

def allergens
  self.my_ingredients.select do |ingredient_instance|
    ingredient_instance.allergen_count > 0
  end
end

def recipe_cards
  RecipeCard.all.select { |card_instance| card_instance.recipe == self}
end

 def card_count
   recipe_cards.length
 end

 def self.most_popular
   self.all.max_by {|recipe_instance| recipe_instance.card_count} #going through list of all recipe instances, and find the value of the card count, and whichever recipe is highest - returns that recipe.
 end

 def add_ingredients(ingredients_array)
   new_array = self.ingredients.concat(ingredients_array)
   self.ingredients = new_array.uniq
   # ingredients_array.map do |ingredient_instance|
   #    self.ingredients.push(ingredient_instance)
   # end
   # self.ingredients.uniq
 end

end
 #Recipe.add_ingredients
