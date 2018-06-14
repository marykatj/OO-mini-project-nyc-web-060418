class RecipeCard

  attr_reader :recipe, :date, :rating, :user

  @@all = []

  def initialize(recipe, user, date, rating)
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end

end
