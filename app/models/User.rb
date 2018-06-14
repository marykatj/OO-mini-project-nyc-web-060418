class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def recipes
    my_recipe_card = RecipeCard.all.select do |recipe_card_instance|
      recipe_card_instance.user == self
    end
    my_recipe_card.map do |recipe_card_instance|
      recipe_card_instance.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    my_allergens = Allergen.all.select do |allergen_instance|
      allergen_instance.user == self
    end
    my_allergens.map do |allergen_instance|
      allergen_instance.ingredient
    end
  end

  def top_three_recipes
    my_recipe_card = RecipeCard.all.select do |recipe_card_instance|
      recipe_card_instance.user == self
    end
    top_three_recipe_cards = my_recipe_card.max_by(3) { |recipe_card_instance| recipe_card_instance.rating }
    top_three_recipe_cards.map do |recipe_card_instance|
      recipe_card_instance.recipe
    end
  end

#User#top_three_recipes
#Most_recent_recipe




end
