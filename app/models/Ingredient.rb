class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def allergen_instances
    Allergen.all.select do |allergen_instance|
      allergen_instance.ingredient == self
    end
  end

  def allergen_count
    self.allergen_instances.length
  end

  def self.most_common_allergen
    max = 0
    most_common = nil
    Ingredient.all.each do |ingredient_instance|
      if ingredient_instance.allergen_count > max
        most_common = ingredient_instance
        max = ingredient_instance.allergen_count
      end
    end
    most_common
  end

end
