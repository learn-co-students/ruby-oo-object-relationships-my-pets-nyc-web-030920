class Owner
  attr_reader :name, :species

  @@all = []
  
  def initialize(name, species="human")
    @name = name
    @species = species
    Owner.all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.map do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    
    Dog.all.map do |dog|
      dog.owner = nil
      dog.mood = "nervous"
    end

    Cat.all.map do |cat|
      cat.owner = nil
      cat.mood = "nervous"
    end

  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end