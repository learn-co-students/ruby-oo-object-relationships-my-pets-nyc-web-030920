class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(new_name)
    @species = "human"
    @name = new_name
    Owner.all << self 
  end

  def self.all 
    @@all 
  end

  def name 
    @name 
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.count 
    Owner.all.count 
  end

  def self.reset_all
    Owner.all.clear
  end

  def cats 
    Cat.all.select do |cat_instance|
      cat_instance.owner == self 
    end
  end

  def dogs 
    Dog.all.select do |dog_instance|
      dog_instance.owner == self
    end
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |dog_instance|
      dog_instance.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat_instance|
      cat_instance.mood = "happy"
    end
  end

  def sell_pets

    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil 
    end

    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil 
    end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  








end